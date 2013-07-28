# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class Browserify extends BasePlugin
		# Plugin name
		name: 'browserify'

		# Render
		# Called per document, for each extension conversion. Used to render one extension to another.
		render: (opts, next) ->
			# Prepare
			{inExtension,outExtension,content,file} = opts

			if inExtension in ['b','bfy','bwsrfy','browserify'] and outExtension in ['js',null]
			# Use .js.js scheme to keep syntax highlighting intact with mininal effort
			# if inExtension in ['js'] and outExtension in ['js',null]
				browserify = require('browserify')
				b = browserify()
				b.add(opts.file.attributes.fullPath)
				options = {}
				b.bundle options, (err, output) ->
					return next(err) if err
					opts.content = output
					return next()

			else
				# Nothing to do, return back to DocPad
				return next()
