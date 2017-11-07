


#require "redis"


REDIS=Redis.new(url: ENV["REDIS_URL"])







#uri=URI.parse(ENV["REDIS"])
#REDIS=Redis.new(host: uri.host,port: uri.port)


#redis=Redis.new(url:"host: redis://h:p17d3d9d1f60e7db1b4d1af87007b11886a6e57dcb13e0ff1508c833ee042244a@ec2-34-233-181-119.compute-1.amazonaws.com:48089/15")




#namespace = [Rails.application.class.parent_name, Rails.env].join ':'
#if Rails.env.production?
#  if ENV['REDISCLOUD_URL']
#      redis_uri = URI(ENV['REDISCLOUD_URL'])
#	      Redis.current = Redis.new(host: redis_uri.host, port: redis_uri.port, password: redis_uri.password)
#		      Redis.current = Redis::Namespace.new(namespace, redis: Redis.new(host: redis_uri.host, port: redis_uri.port, password: redis_uri.password))
#			    end
#				else
#				  Redis.current = Redis::Namespace.new(namespace, redis: Redis.new(host: '127.0.0.1', port: 6379))
#				  end




