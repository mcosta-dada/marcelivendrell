// directions to edit this file

    // step 1: change var dest to your theme name ala '../themes/your-theme-name'
   // step 2: change var stage to your local dev url ala 'local.dev'
  // step 3: run 'gulp build' in terminal to cook initial fileset, assign in WordPress dashboard
 // step 4: run 'gulp' in terminal to begin watch + spawn dev browser
// step 5: run 'gulp build' one last time when you're done with edits to get your shiny fileset

var

// location variables
project     = 'Marceli Vendrell',
slug        = 'marcelivendrell',
src         = './src/',
dest        = '../'+ slug,  // step 1: change this to your theme name
stage       = 'marcelivendrell.test',                     // step 2: change this to your local dev url

// paths
paths = {
  style: './style.css',
  src: {
    scss: src+'scss/**/*.scss',
    //css: src+'scss/**/*.css',
    js: src+'js/**/*.js',
    php: src+'**/*.php',
    img: src+'img/**/*.+(png|jpg|gif|svg)',
    screenshot: src+'screenshot/screenshot.**',
    fonts: src+'fonts/**/*.{eot,svg,ttf,woff,woff2}',
    vendor: {
      jquery: src+'vendor/jquery',
      bootstrap: src+'vendor/bootstrap',
      slick: src+'vendor/slick',
      animate: src+'vendor/animate',
      wow: src+'vendor/wow',
    }
  },
  dest: {
    js: dest+'/js',
    img: dest+'/img',
    css: dest+'/css',
    lang: dest+'/lang'
  }
},

// requirements
gulp            = require("gulp"),
sass            = require("gulp-sass"),
postcss         = require("gulp-postcss"),
concat          = require("gulp-concat"),
autoprefixer    = require('autoprefixer'),
cssnano         = require("cssnano"),
sourcemaps      = require("gulp-sourcemaps"),
browserSync     = require("browser-sync").create(),
ugly            = require('gulp-uglify'),
imgMin          = require('gulp-imagemin'),
casht           = require('gulp-cache'),
dL              = require('del'),
merge           = require("merge-stream"),
newer           = require('gulp-newer'),
wpPot           = require('gulp-wp-pot'),
cleanCSS        = require('gulp-clean-css');


// grab + cook teh styles
function style() {

  var _css_vendor = gulp.src([paths.src.vendor.bootstrap + '/css/bootstrap.min.css', 
    paths.src.vendor.slick +'/slick.css', paths.src.vendor.slick +'/slick-theme.css',
    paths.src.vendor.animate +'/animate.css'])
  .pipe(postcss([cssnano()]))
  .pipe(newer(paths.dest.css))
  .pipe(concat('vendor.css'))
  .pipe(gulp.dest(paths.dest.css));

  var _scss = gulp
  .src([paths.src.scss])
  .pipe(sourcemaps.init())
  .pipe(sass())
  .on("error", sass.logError)
  .pipe(concat('main.css'))
  .pipe(postcss([autoprefixer, cssnano]))
  .pipe(sourcemaps.write('.'))
  .pipe(gulp.dest(paths.dest.css));
  //.pipe(browserSync.stream());

  var _style = gulp
  .src(paths.style)
  .pipe(newer(dest))
  .pipe(gulp.dest(dest));

  //return merge(_scss, _css, _css_vendor);

  return merge(_css_vendor, _scss, _style)
    //.pipe(cleanCSS({compatibility: 'ie8'}))
    .pipe(browserSync.stream());

  //return merge(_css, _style);

}

// grab + cook teh javascrptz
function js() {
  return gulp.src([
    paths.src.vendor.jquery +'/jquery.js',
    paths.src.vendor.bootstrap +'/js/bootstrap.bundle.js',
    paths.src.vendor.slick +'/slick.js',
    paths.src.vendor.wow +'/wow.js',
    paths.src.js
    ])
  //.pipe(ugly())
  .pipe(concat('all.js'))
  .pipe(gulp.dest(paths.dest.js))
  .pipe(browserSync.stream());
}

// grab + cook teh PHPpers
function php() {
  return gulp.src(paths.src.php)
  .pipe(newer(dest))
  .pipe(gulp.dest(dest))
  .pipe(browserSync.stream());
}

// grab + squeeze teh imagers
function img() {

  var screenshot_theme = gulp.src(paths.src.screenshot)
  .pipe(gulp.dest(dest));

  var images = gulp.src(paths.src.img)
  .pipe(newer(paths.dest.img))
  .pipe(casht(imgMin({
          // settings
        })))
  .pipe(gulp.dest(paths.dest.img));

  return merge(screenshot_theme, images);
}

function lang() {
  return gulp.src(paths.src.php)
  .pipe(wpPot( {
    domain: slug,
    package: project
  } ))
  .pipe(gulp.dest(paths.dest.lang +'/theme.pot'));
};

function modules() {
  // Bootstrap
  var bootstrap = gulp.src(['./node_modules/bootstrap/dist/**/*'])
  .pipe(gulp.dest(paths.src.vendor.bootstrap));
  // jQuery
  var jquery = gulp.src([
    './node_modules/jquery/dist/*',
    '!./node_modules/jquery/dist/core.js'
    ])
  .pipe(gulp.dest(paths.src.vendor.jquery));

  //SlickSlider
  var slick = gulp.src('./node_modules/slick-slider/slick/**/*')
  .pipe(gulp.dest(paths.src.vendor.slick));

  //Animate
  var animate = gulp.src('./node_modules/animate.css/**/*')
  .pipe(gulp.dest(paths.src.vendor.animate));

  //WOW
  var wow = gulp.src('./node_modules/wowjs/dist/**/*')
  .pipe(gulp.dest(paths.src.vendor.wow));

  //Fonts
  var fonts = gulp.src(paths.src.fonts)
  .pipe(gulp.dest(paths.dest.css+ '/fonts'));

  return merge(bootstrap, jquery, slick, animate, wow, fonts);
}

// clear the room
async function clean() {
  return dL.sync([dest], {force: true});
}

// reload teh bsync
function reload() {
  browserSync.reload();
}

// I am the Watcher on the Wall
function watch() {
  browserSync.init({
    proxy: stage,
    browser: ["google chrome"],
  });
  gulp.watch(paths.src.scss, style);
  gulp.watch(paths.src.php, php);
  gulp.watch(paths.src.js, js);
  gulp.watch(paths.src.img, img);
}

// expose teh tasks for command line testing
exports.style = style;
exports.js = js;
exports.php = php;
exports.img = img;


// default gulp triggers Watcher 
gulp.task('default', gulp.series(gulp.parallel(style, js, php, img, lang ), watch));      

// all done let's build
var build = gulp.series(modules);
var clean = gulp.series(clean, build);
//var build = gulp.series(clean, gulp.parallel(modules));
var vendor = gulp.series(clean, modules);


exports.build = build;
exports.clean = clean;