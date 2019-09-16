require 'sinatra/flash'
require 'sinatra/base'
require 'data_mapper'
require 'dm-postgres-adapter'
require './lib/user'
require './lib/peeps'

configure :development do
  DataMapper.setup(:default, 'postgres:///database')
end

class Chitter < Sinatra::Base
  enable :sessions, :method_override
  # register Sinatra::Flash

get '/' do
  erb :sign_up
end

post '/user/new' do
  session[:user] = User.create(
    name: params[:name],
    username: params[:username],
    email_address: params[:email,
    password: params[:password],]
  )
  redirect '/welcome'
end

run! if $PROGRAM_NAME == __FILE__

end
