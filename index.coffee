import Vue from 'vue'
import balanceText from 'balance-text'
export default

	# Add balance text to the element
	bind: (el) ->
		Vue.nextTick -> balanceText el, watch: true

		# Manually fire again later, like after styles are injected by Webpack
		setTimeout (-> balanceText el), 300

	# Update when contents change
	componentUpdated: (el) -> balanceText el

	# Remove watching
	unbind: (el) -> balanceText el, watch: false
