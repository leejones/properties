set :application, "properties"
set :repository, "speedy.local:Dropbox/repos/properties.git"
set :deploy_via, :remote_cache
set :deploy_to, "/srv/#{application}"
set :keep_releases, "5"
set :scm, :git
set :use_sudo, false

server "properties.speedy.local", :web, :app, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

task :symlink_config do
  run "ln -nfs #{shared_path}/config/database.yml #{current_release}/config/database.yml"
end

before "deploy:symlink", "symlink_config"
after "deploy:restart", "deploy:cleanup"