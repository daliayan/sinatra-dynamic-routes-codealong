require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # Code your final two routes here:

  get "/multiply/:num1/:num2" do
    @digit = params[:num1].to_i * params[:num2].to_i
    "#{@digit}"
  end

end