/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// import $ from 'jquery'
// global.$ = $
// global.jQuery = $





// Specific frontend applications
import 'davechmura_website'

// $(function () {
//   console.log('jQuery is loaded');
// });
// import "actiontext"
require("@rails/ujs").start()
require("@rails/activestorage").start()

// import 'davechmura_website/stylesheets/_contact_us_page.sass'
import 'davechmura_website/stylesheets/_flash_errors.sass'
import 'davechmura_website/stylesheets/_footer.sass'
import 'davechmura_website/stylesheets/_header.sass'
import 'davechmura_website/stylesheets/_mixins.sass'
import 'davechmura_website/stylesheets/_variables.sass'
import 'davechmura_website/stylesheets/application.sass'
import 'davechmura_website/stylesheets/agency.sass'
import 'davechmura_website/stylesheets/pages.sass'
import 'davechmura_website/stylesheets/posts.sass'
import 'davechmura_website/stylesheets/resume.sass'
import 'davechmura_website/stylesheets/ribbons.sass'
import 'davechmura_website/stylesheets/user_badges.sass'

require.context('davechmura_website/images/', true, /.(gif|jpg|jpeg|png|svg)$/)

// require.context('davechmura_website/stylesheets/', true, /\.(css|scss|sass)$/)
// import 'davechmura_website/images/DavePics/hug.jpg'
document.addEventListener('turbolinks:load', () => {
  FontAwesome.dom.i2svg();
})

require("trix")
require("@rails/actiontext")
import 'trix/dist/trix.css'