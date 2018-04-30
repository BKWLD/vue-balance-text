webpack = require 'webpack'
nodeExternals = require 'webpack-node-externals'

module.exports =
	mode: 'none'

	entry: index: './index.coffee'

	resolve: extensions: ['.js', '.coffee']

	module: rules: [
		{
			test: /\.coffee$/,
			use: [
				loader: 'coffee-loader'
				options: transpile: presets: ['env']
			]
		}
	]

	output:
		libraryTarget: 'commonjs2'
		filename: '[name].js'
		path: __dirname

	externals: [ nodeExternals() ]
