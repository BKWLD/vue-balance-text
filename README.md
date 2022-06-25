# vue-balance-text

A Vue directive that implements [balance-text](https://github.com/adobe-webplatform/balance-text).  Here is [their demo page](http://adobe-webplatform.github.io/balance-text/demo/index.html).

## Install

```sh
yarn add vue-balance-text
# or
npm install --save vue-balance-text
```

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

When rendering HTML with `v-html`, you need to tell v-balance-text to operate on the children vs on the element it's attached to:

```html
<div v-balance-text.children v-html='body'></div>
```

## Example

Before:

![](http://yo.bkwld.com/243A0w0t2D1h/Image%202018-04-30%20at%204.17.58%20PM.png)

After:

![](http://yo.bkwld.com/3w3v441G1F0q/Image%202018-04-30%20at%204.18.18%20PM.png)
