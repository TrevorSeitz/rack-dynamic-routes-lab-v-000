class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/item/env"
      if @@items.include?(item)
      resp.write "The item costs #{item.price}"
    els
      resp.write "Item not found"
      resp status = 400
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
