require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      if @@item.contain?(rep.path)
      else
        resp.write "Item not found"
        resp.status = 400
      end
      binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
