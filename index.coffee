Vue = require 'vue'
Vue = Vue.default if Vue.__esModule
balanceText = require 'balance-text'
module.exports =

	# Add balance text to the element
	bind: (el, { modifiers }) ->
		
		# Support children's modifier
		target = if modifiers.children then el.children else el
		
		# Add balance text to the element
		Vue.nextTick -> balanceText target, watch: true

		# Manually fire again later, like after styles are injected by Webpack
		setTimeout (-> balanceText target), 300

	# Update when contents change
	componentUpdated: (el, { modifiers }) -> 
		target = if modifiers.children then el.children else el
		balanceText target

	# Remove watching
	unbind: (el, { modifiers }) -> 
		target = if modifiers.children then el.children else el
		balanceText target, watch: false
