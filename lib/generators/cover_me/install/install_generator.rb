require 'rails/generators/base'

module CoverMe
  class InstallGenerator < Rails::Generators::Base #:nodoc:

    desc 'Installs a Rake task for the CoverMe gem.'

    def self.source_root
      @_cover_me_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def self.banner
      "rails generate cover_me:install"
    end

    def copy_files
      template        'cover_me.rake', 'lib/tasks/cover_me.rake'
    end

  end
end