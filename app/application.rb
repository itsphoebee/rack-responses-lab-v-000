class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 12
      resp.write "Good Morning! The time is now #{Time.now}"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
