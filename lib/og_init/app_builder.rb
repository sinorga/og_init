module OgInit
  class AppBuilder < Rails::AppBuilder

    def add_common_rake_tasks
      directory 'tasks', 'lib/tasks'
    end

    def add_rvmrc
      #system('rvm --create use ruby-2.0.0@'+ app_name + ' --rvmrc')
      template "rc/.rvmrc.erb", '.rvmrc', :force => true
    end

    def add_custom_gems
      additions_path = find_in_source_paths 'Gemfile_additions'
      new_gems = File.open(additions_path).read
      append_file 'Gemfile', "\n#{new_gems}"
    end
  end
end
