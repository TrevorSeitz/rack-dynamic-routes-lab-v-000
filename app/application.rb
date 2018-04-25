class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/item/<Item Name>"
      resp.write "The item costs"
    elsif @@items.include?
      resp.write "Item not found"
      resp status = 400
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
