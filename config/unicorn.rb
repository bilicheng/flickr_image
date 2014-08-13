worker_processes 3
preload_app true
timeout 30

#Gemfile
group :production do
    gem 'unicorn'
end