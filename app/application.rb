class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end

    ch_term} is one of our items"
      else
        resp.write "Couldn't find #{search_term}"
      end

    else
      resp.write "404"
    end

    resp.finish
  end
end
