# encoding: utf-8
require 'rails/generators'

module Bones
  module Generators
    class InstallGenerator < Rails::Generators::Base
       #source_root File.expand_path('../templates', __FILE__)
       
       desc "This is the description"

       def add_assets
         prepend_to_file "app/assets/stylesheets/application.scss", "@import 'bones';\n"
        
        #insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require foundation\n", :after => "jquery_ujs\n"
        #append_to_file "app/assets/javascripts/application#{detect_js_format[0]}", "\n$(function(){ $(document).foundation(); });\n"
        settings_file = File.join(File.dirname(__FILE__),"..","..","..","bones_config.scss")
        create_file "app/assets/stylesheets/bones_config.scss", File.read(settings_file)
        #append_to_file "app/assets/stylesheets/foundation_and_overrides.scss", "\n@import 'foundation';\n"
        #insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "#{detect_css_format[1]} require foundation_and_overrides\n", :after => "require_self\n"
      end

      def detect_js_format
        return ['.coffee', '#='] if File.exist?('app/assets/javascripts/application.coffee')
        return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
        return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
      end

      def detect_css_format
        return ['.css', ' *='] if File.exist?('app/assets/stylesheets/application.css')
        return ['.css.sass', ' //='] if File.exist?('app/assets/stylesheets/application.css.sass')
        return ['.sass', ' //='] if File.exist?('app/assets/stylesheets/application.sass')
        return ['.css.scss', ' //='] if File.exist?('app/assets/stylesheets/application.css.scss')
        return ['.scss', ' //='] if File.exist?('app/assets/stylesheets/application.scss')
      end
    end
  end
end