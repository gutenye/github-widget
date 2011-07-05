class GithubWidgetGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../app/assets', __FILE__)
	#argument :file_name, :type => :string
	#class_option :stylesheet, :type => :boolean, :default => true, :description => "x"
	
  def init
		directory ".", "app/assets"
  end

end
