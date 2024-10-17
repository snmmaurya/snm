# config/initializers/searchkick.rb
Searchkick.client = Elasticsearch::Client.new(
  url: ENV["ELASTICSEARCH_URL"] || "http://localhost:9200",
  log: true
)