module OgInit
  class AppBuilder < Rails::AppBuilder

    def add_common_rake_tasks
      directory 'tasks', 'lib/tasks'
    end

    def add_rvmrc
      #system('rvm --create use ruby-2.0.0@'+ app_name + ' --rvmrc')
      template "rc/.rvmrc.erb", '.rvmrc', :force => true
    end
  end
end
