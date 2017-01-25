require "rack"
require "pry"

# class App
#   def call(request)
#     [200, {"Content-Type" => "text/plain"}, ["hello from Rack. this is the body"]]
#   end
# end

# app = App.new


app = proc { |req| [200, {"Content-Type" => "text/plain"}, ["hello from Rack. this is the body"]] }

run app
