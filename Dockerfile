# Use the official Ruby image from the Docker Hub
FROM ruby:3.3.4

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 for the Rails application
EXPOSE 3000

# Set the command to run the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]

FROM ruby:3.0.0

# Install specific Bundler version
RUN gem install bundler -v '2.3.4'





