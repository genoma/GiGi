gulp = require 'gulp'
sass = require 'gulp-sass'
scsslint = require 'gulp-scss-lint'
browsersync = require 'browser-sync'



gulp.task 'sass', ->
  gulp.src('./tests/test.scss')
    .pipe(scsslint())
    .pipe(sass().on('error', sass.logError))
    .pipe gulp.dest('./tests')
  return



gulp.task 'lint', ->
  gulp.src(['gigi.scss', './tests/*.scss'])
    .pipe(scsslint({
      'config': 'lint.yml'
    }))
  return
