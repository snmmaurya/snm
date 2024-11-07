# config/puma.rb

# Specifies the number of threads to use for the application.
# You can set both minimum and maximum threads. It will scale between the min and max threads.
# Default is 5 threads for both min and max.
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }

threads threads_count, threads_count

# Specifies the port that Puma will listen on to receive requests.
port ENV.fetch("PORT") { 3000 }

# Specifies the environment that Puma will run in.
environment ENV.fetch("RAILS_ENV") { "development" }

# Specifies the number of worker processes to use.
# This will fork workers from the main Puma process. If you're using a multi-core server, workers allow you to run Rails in parallel.
# Workers are useful when handling high-concurrency, high-throughput requests.
workers ENV.fetch("WEB_CONCURRENCY") { 1 }

# Preload the application before forking worker processes.
# This saves memory and can speed up application startup, but workers cannot share connections to external services (like the database).
preload_app!

# Specifies the pidfile that Puma will use to store the server's PID.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# The `on_worker_boot` block is executed when a worker boots.
# This is needed to reconnect to the database, since connections can't be shared between workers.
on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

# Allow Puma to be restarted by `rails restart` command.
plugin :tmp_restart
