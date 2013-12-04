# encoding: utf-8
require 'rails/generators'

module Bones
  module Generators
    class InstallGenerator < Rails::Generators::Base
       
       desc "Moves assets out of the gem directory and into the visible asset pipeline"
       def add_assets
         styles_dir = "#{Rails.root}/app/assets/stylesheets"
         bones_dir = "#{File.dirname(__FILE__)}/../../../app/assets/stylesheets/bones"
        
         # make sure application is scss file
         if !File.exist?("#{styles_dir}/application.scss")
           if File.exist?("#{styles_dir}/application.css")
             `mv #{styles_dir}/application.css #{styles_dir}/application.scss`
           elsif File.exist?("#{styles_dir}/application.css.scss")
             `mv #{styles_dir}/application.css.scss #{styles_dir}/application.scss`
           else
             `touch #{styles_dir}/application.scss`
           end
         end
         
         # add "@import 'bones/bones'; to application.scss"
         prepend_to_file "app/assets/stylesheets/application.scss", "@import 'bones/bones';\n"
         # make directory for bones files
         `mkdir #{styles_dir}/bones`
         puts "--> created directory: app/assets/stylesheets/bones"
         # copy config directory
         `cp -R #{bones_dir}/config/ #{styles_dir}/bones/bones-config`
         puts "--> copied Bones config files into app/assets/stylesheets/bones/bones-config"
         # copy main config file
         `cp #{bones_dir}/config.scss #{styles_dir}/bones/bones.scss`
         puts "--> copied main Bones configuration file into app/assets/stylesheets/bones"
         
         # success!
         puts "\n--> Bones is ready.\n\nHooray! Edit files in app/assets/stylesheets/bones/bones-config to your liking and watch your app change on the fly!"
      end
      
    end
  end
end