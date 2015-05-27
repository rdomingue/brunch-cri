exports.config =
  # See http://brunch.io/#documentation for docs.
  paths:
    public: 'assets_dist'

  files:
    javascripts:
      joinTo:
        'js/jquery.js': /^(bower_components[\\/]jquery[\\/]dist[\\/]jquery.js)/
        'js/app.js': /^(assets_dev[\\/]js)/
        'js/vendor.js': /^(vendor|bower_components(?![\\/]jquery[\\/]dist[\\/]jquery.js))/
    stylesheets:
      joinTo:
        'css/main.css':[
           /^(assets_dev[\\/]css[\\/])/
           /bower_components[\\/](?!bootstrap-rtl[\\/]dist[\\/]css[\\/]bootstrap-rtl.css)/
        ]

  modules:
    wrapper: false
    definition: false

  conventions:
      # we don't want javascripts in asset folders to be copied like the one in
      # the bootstrap assets folder
      assets: /assets[\\/](?!javascripts)/

  plugins:
    sass:
      debug: 'comments' # or set to 'debug' for the FireSass-style output
      mode: 'ruby' # set to 'native' to force libsass
      allowCache: true
