class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/<ITEM NAME>)
      @@items.each do |item|
        resp.write "#{item}\n"
      end

    elsif req.path.!match(/items/<ITEM NAME>)
      resp.write "404"
    end

    resp.finish
  end
end
