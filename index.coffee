balanceText = require 'balance-text'
module.exports =

	# Add balance text to the element
	bind: (el) -> setTimeout (-> balanceText el, watch: true), 200

	# Remove watching
	unbind: (el) -> balanceText el, watch: false
