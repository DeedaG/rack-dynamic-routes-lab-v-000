class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items/<ITEM NAME>"
      #resp.write @@items.price
      if req.path.match(/items/<ITEM NAME>)
      else
      end     
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
