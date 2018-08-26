class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items/"
      #resp.write @@items.price
        item =  req.path.split("/items/").last
      if
      else
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
