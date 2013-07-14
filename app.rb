require "logger"
require "sinatra"
require "active_support/core_ext/object/to_query"

configure do
  set :bind, "0.0.0.0"
end

params_logger = Logger.new("params.log")

get "/" do
  params_logger.info params.to_query

  "Get OK"
end

post "/" do
  params_logger.info params.to_query

  "Post OK"
end
