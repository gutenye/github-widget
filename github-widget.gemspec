$: << "lib"
require "github-widget/version"

Gem::Specification.new do |s|
	s.name = "github-widget"
	s.version = GithubWidget::VERSION::IS
	s.summary = "a client-side, complete Github Widget."

	s.description = <<-EOF
a client-side, complete Github Widget, include reposotires, user activities, .... developping with Sproutcore2.0, Rails3.1, Coffeescript, Sass, HTML5.
	EOF

	s.author = "Guten"
	s.email = "ywzhaifei@gmail.com"
	s.homepage = "http://github.com/GutenYe/github-widget"
	s.rubyforge_project = "xx"

	s.files = `git ls-files`.split("\n")

	#s.add_dependency "pd"
end
