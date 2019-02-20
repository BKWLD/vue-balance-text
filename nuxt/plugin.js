/**
 * Nuxt loses the current directory at this point, so I had to refer to the
 * the directive src file through the module name.
 */
import Vue from 'vue'
import directive from 'vue-balance-text/index.js'
Vue.directive('balance-text', directive)

// Expose balance-text for manual use
import balanceText from 'balance-text'
export default function(context, inject) {
	inject('balanceText', balanceText)
}
