class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 12
      resp.write "Good Morning! The time is now #{Time.now}."
    else
      resp.write "Good Afternoon! The time is now #{Time.now}."
    end
    resp.finish
  end
end
