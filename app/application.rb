class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
        resp.write "#{price}\n"

    elsif
      resp.write "404"
    end

    resp.finish
  end
end


class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/<ITEM NAME>)

      search_term = req.params["Item Name"]

      if Item.include?(search_term)
        resp.write "#{Item.search_term.price}"
      else
        resp.write "404"
      end

    else
      resp.write "Path Not Found"
    end

    resp.finish
  end
end
