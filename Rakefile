
desc "release"
task :release do
	run "gem build github-widget.gemspec"
	run "gem push *.gem"
	run "rm *.gem"
end
 
def run cmd
	puts cmd
	`#{cmd}`
end

