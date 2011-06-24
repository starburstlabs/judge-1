class JudgeGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  argument :path, :type => :string, :default => "public/javascripts"
  class_option :example, :type => :boolean, :default => true, :description => "Copy example jQuery element bindings"
 
  desc %Q{
    This copies the judge jQuery plugin to your application.
    The default path is public/javascripts, but you can set your own as follows:

      rails g judge my/super/cool/path

    Some example element bindings are also copied into this directory.
    If you don't want them, use the --skip-example option.
  }
  def copy_files
    copy_file "jquery.judge.js", "#{path}/jquery.judge.js"
    copy_file "example.judge.js", "#{path}/example.judge.js" if options.example?
  end
end