# Use official Ruby image as a base image
FROM ruby:3.3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client build-essential

# Set up working directory
WORKDIR /app

# Install bundler
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy the rest of the application code
COPY . .

# Precompile assets (if any)
RUN RAILS_ENV=production bundle exec rake assets:precompile

# Expose port 3000 to access the app
EXPOSE 3000

# Start Puma server
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
