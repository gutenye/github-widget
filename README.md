github-widget, a client-side, complete Github Widget.
====================================================

| Homepage:      |  https://github.com/GutenYe/github-widget       |
|----------------|------------------------------------------------------       |
| Author:	       | Guten                                                 |
| License:       | MIT-LICENSE                                                |
| Documentation: | http://rubydoc.info/gems/github-widget/frames                |
| Issue Tracker: | https://github.com/GutenYe/github-widget/issues |

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

Note on Patches/Pull Requests
-----------------------------

1. Fork the project.
2. Make your feature addition or bug fix.
3. Add tests for it. This is important so I don't break it in a future version unintentionally.
4. Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
5. Send me a pull request. Bonus points for topic branches.
6. Coding Style Guide: https://gist.github.com/1105334


Contributing
-------------

Set up development environment

	cp develop-example develop
	cd develop # is a rails3.1 application
	# develop and test

	# it's import to symlink the outside file into rails project.
	cd develop/app/assets/javascripts/github-widget
	ln -s ../../../../../app/assets/javascripts/github-widget/projects.js.coffee 

Resources
=========

* [github-timeline-widget](https://github.com/alindeman/github-timeline-widget) a Github widget that displays your GitHub activity.
* [github-api](https://github.com/fitzgen/github-api) Javascript bindings for the Github API.
* [coffee-script](https://github.com/jashkenas/coffee-script) Unfancy JavaScript.
* [sproutcore20](https://github.com/sproutcore/sproutcore20) JavaScript Application Framework.
* [sass](https://github.com/nex3/sass) Sass makes CSS fun again. 
* [html5-boilerplate](https://github.com/paulirish/html5-boilerplate) starting html/css template. so much goodness baked in by default.

Copyright
---------

(the MIT License)

Copyright (c) 2011-2012 Guten

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
