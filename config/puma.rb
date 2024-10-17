# config/puma.rb

# Specifies the minimum and maximum threads Puma will use to serve requests.
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests.
port        ENV.fetch("PORT") { 3000 }

# Specifies the `environment` that Puma will run in.
environment ENV.fetch("RAILS_ENV") { "development" }

# Specifies the number of workers to fork (in clustered mode).
# Workers are forked web server processes. If using threads and workers together,
# this allows Puma to be multi-threaded while serving more concurrent requests.
workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Preload the application for better performance.
preload_app!

# On worker boot:
# - If using threads, reconnect any thread-based services after forking.
# - Reconnect to the database here.
on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end
# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
