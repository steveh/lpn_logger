require "logger"
require "sinatra"

params_logger = Logger.new("params.log")

get "/" do
  params_logger.info params

  "Get OK"
end

post "/" do
  params_logger.info params

  "Post OK"
end
