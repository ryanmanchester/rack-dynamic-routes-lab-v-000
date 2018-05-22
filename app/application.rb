require 'pry'
class Application
@@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry




  end

end
