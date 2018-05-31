require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      if @@items.include?(req.path[7..-1])
        selected_item = @@items.find {|i| i.name == "req.path[7..-1]"}
        resp.write selected_item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
      # binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
    # binding.pry
  end
end
