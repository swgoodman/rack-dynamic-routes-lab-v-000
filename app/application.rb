class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      if @@item.contain?("hello")
      else
        resp.write "Item not found"
        resp.status = 404
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
