if ENV["REDISTOGO_URL"]
  redis_url = ENV["REDISTOGO_URL"]
else
  redis_url = "redis://#{Gaston.redis.host}:#{Gaston.redis.port}/#{Gaston.redis.db}"
end
redis = Redis.new