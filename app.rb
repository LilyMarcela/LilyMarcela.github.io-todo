
require 'sinatra'
require 'make_todo'

set :sessions, true

get '/' do
  @tasks = Tarea.all
  
  erb :index
end

post '/create' do
  Tarea.create("#{params[:name_task]}")
  redirect '/'
end  

patch '/update/:id' do
  Tarea.update(params[:id])
  redirect '/'
end  

  


delete '/delete/:id' do
  Tarea.destroy(params[:id])
  redirect '/'
end


