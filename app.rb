require "sinatra"
set :session_secret, "super secret", "named cat"

get "/" do
  "hello!"
end

get "/secret" do
  "Shh! You're not supposed to be in here..."
end

get "/confused" do
  "What are you doing here?"
end

get "/dunno" do
  "Ah, the ole watching a plain webpage"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/cat-naming" do
  erb(:cat_form)
end

post "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end