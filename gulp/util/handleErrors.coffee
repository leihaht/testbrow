# Fix error handling

notify = require 'gulp-notify'

module.exports = ->
	# Send error to notification center with gulp-notify
	notify.onError {
		title: 'Compile Error'
		message: '<%= error.message %>'
	}
    .apply @, arguments

	# Keep gulp from hanging on this task
	@.emit 'end'