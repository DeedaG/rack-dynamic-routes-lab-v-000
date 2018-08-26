class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/name:>)
        resp.write "#{price}\n"

    else
      resp.write "404"
    end

    resp.finish
  end
end
