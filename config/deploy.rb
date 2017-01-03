# config valid only for current version of Capistrano
lock "3.7.1"

set :application, "deploy_test"
set :repo_url, "https://github.com/RpL02/deploy_test.git"


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, "/home/deploy/deploy_test"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :default_env, {
    path: '/usr/local/rbenv/plugins/ruby-build/bin:/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH',
    rbenv_root: '/usr/local/rbenv'
}
set :rbenv_roles, :all
set :rbenv_ruby, '2.3.1'
set :rbenv_ruby_dir, '/usr/local/rbenv/versions/2.3.1'
set :rbenv_custom_path, '/usr/local/rbenv'


# Default value for keep_releases is 5
# set :keep_releases, 5


append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
