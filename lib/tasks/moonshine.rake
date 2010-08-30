namespace :moonshine do
  namespace :app do
    desc "Overwrite this task in your app if you have any bootstrap tasks that need to be run"
    task :bootstrap do
      Rake::Task['db:seed'].invoke
    end
  end
end
