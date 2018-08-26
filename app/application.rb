class Application

  @@item = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      #resp.write "#{item.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    if req.path=="/items/<ITEM NAME>"
      resp.write @@items.price
    resp.finish
  end
end
