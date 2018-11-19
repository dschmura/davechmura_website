  // Include external resources for this app_files
  import 'bootstrap'
  import 'actiontext'
  import 'trix/dist/trix.css'

  // Include internal resources for this app
  import './javascripts/application'
  import './javascripts/agency.min'

  require.context("./stylesheets", true, /\.(css|scss|sass)$/)
  require.context('./images/', true, /.(gif|jpg|jpeg|png|svg)$/)
