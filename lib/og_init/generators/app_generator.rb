require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module OgInit
  class AppGenerator < Rails::Generators::AppGenerator
    def finish_template
      invoke :og_init_customization
      super
    end

    def og_init_customization
      invoke :add_common_rake_tasks
      invoke :add_rc_file
    end

    def add_common_rake_tasks
      say 'Add common rake tasks'
      build :add_common_rake_tasks
    end

    def add_rc_file
      build :add_rvmrc
    end

    protected

    def get_builder_class
      OgInit::AppBuilder
    end
  end
end
