const { environment } = require('@rails/webpacker')


const webpack = require('webpack');
// environment.plugins.append('Provide', new webpack.ProvidePlugin({
//   $: 'jquery',
//   jQuery: 'jquery'
// }));

module.exports = environment


// For production deployments?
const path = require("path")
Object.assign(environment.loaders.get("css").use.find(el => el.loader === "postcss-loader").options, {
  config: {
    path: path.resolve(__dirname, "../..", ".postcssrc.yml")
  }
})
