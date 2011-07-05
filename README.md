github-widget, a client-side, complete Github Widget.
====================================================

Overview
--------

a widget provides your repositores, activities, ..  current only repositores part is implemented.  for activities, see [github-timelime-widget](https://github.com/alindeman/github-timeline-widget)

**Live Demo** [github-widget.heroku.com](http://github-widget.heroku.com)

![screenshot](https://github.com/GutenYe/github-widget/raw/master/snapshot.png)

Dependency
----------

* Rails3.1 
* SproutCore 2.0 
* HTML5 
* Coffescript 
* Sass


INSTALL & USAGE
---------------

(optional) use a HTML5 boilerplate

	rails new foo --template https://github.com/russfrisch/h5bp-rails/raw/master/h5bp.rb

in Gemfile

	gem 'sproutcore-rails', :git => 'git://github.com/GutenYe/sproutcore-rails.git'
	gem 'github-api-rails', :git => 'git://github.com/GutenYe/github-api.git', :branch => 'rails'
	gem 'github-widget'

in app/assets/javascripts/application.js

	//= require github-api
	//= require sproutcore
	//= require github-widget/projects

in app/assets/stylesheets/application.css

	*= require github-widget/projects

in app/views/layouts/applictions.html.erb

	<script>
		window.github_username = 'gutenye';
	</script>
	<script type='text/html'>
		<%= render 'github-widget/projects.hbs' %>
	</script>
	...
	<%= javascript_include_tag 'appliction' %>
		
Custom
------

	rails g github_widget

this will create a list of source code.

	app/assets/javascripts/github-widget/projects.js.coffee
	app/assets/stylesheets/github-widget/projects.css.sass.erb
	...


Contributing
-------------

Set up development environment

	cp develop-example develop
	cd develop # is a rails3.1 application
	# develop and test


Resources
=========

* [github-timeline-widget](https://github.com/alindeman/github-timeline-widget) a Github widget that displays your GitHub activity.
* [github-api](https://github.com/fitzgen/github-api) Javascript bindings for the Github API.
* [coffee-script](https://github.com/jashkenas/coffee-script) Unfancy JavaScript.
* [sproutcore20](https://github.com/sproutcore/sproutcore20) JavaScript Application Framework.
* [sass](https://github.com/nex3/sass) Sass makes CSS fun again. 
* [html5-boilerplate](https://github.com/paulirish/html5-boilerplate) starting html/css template. so much goodness baked in by default.

