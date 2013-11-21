# encoding: utf-8
require 'rails/generators'

module Bones
  module Generators
    class InstallGenerator < Rails::Generators::Base
       #source_root File.expand_path('../templates', __FILE__)
       
       desc "This is the description"
       def add_assets
         prepend_to_file "app/assets/stylesheets/application.scss", "@import 'bones';\n"
         settings_file = File.join(File.dirname(__FILE__),"..","..","..","app","assets","stylesheets","bones","config","bones_config.scss")
         create_file "app/assets/stylesheets/bones_config.scss", File.read(settings_file)
      end
      
    end
  end
end