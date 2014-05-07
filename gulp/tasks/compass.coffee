compass      = require 'gulp-compass'
gulp         = require 'gulp'
livereload   = require 'gulp-livereload'
notify       = require 'gulp-notify'
handleErrors = require '../util/handleErrors'

gulp.task 'compass', ->
	gulp.src './src/sass/*.sass'
		.pipe compass {
			config_file: 'compass.rb',
			css: 'build',
			sass: 'src/sass'
		}
		.on 'error', handleErrors
		.pipe livereload()