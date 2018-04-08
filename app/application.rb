class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    resp.write now
    message = now.hour < 12 ? "Good Morning" : "Good Afternoon"
    resp.write message
    resp.finish
  end

end

