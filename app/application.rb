require 'pry'
class Application
@@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      #binding.pry
      item = @@items.each do |i|
        binding.pry
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end
