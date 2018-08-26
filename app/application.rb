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


    if req.path.match(/search/)

      search_term = req.params["Item Name"]

      if @@items.include?(search_term)
        resp.write "#{search_term} is one of our items"
      else
        resp.write "Couldn't find #{search_term}"
      end

    else
      resp.write "Path Not Found"
    end

    resp.finish
  end
end
