# vue-balance-text

A Vue directive that implements [balance-text](https://github.com/adobe-webplatform/balance-text).  Here is [their demo page](http://adobe-webplatform.github.io/balance-text/demo/index.html).

## Install

`yarn add vue-balance-text or npm install --save vue-balance-text`

#### Vue

```js
Vue = require('vue')
Vue.directive('balance-text', require('vue-balance-text'))
```

#### Nuxt

In `nuxt.config.js`:

```js
{
  modules: [ 'vue-balance-text/nuxt/module' ]
}
```

## Usage

Use in a Vue template like:

```html
<h1 v-balance-text>A long title with many words that will wrap to multiple lines</h1>
```

## Example

Before:

![](http://yo.bkwld.com/1K2J1r2w0R1x/Image%202018-04-30%20at%204.08.20%20PM.png)

After:

![](http://yo.bkwld.com/293d3B0d2C2z/Image%202018-04-30%20at%204.08.56%20PM.png)
