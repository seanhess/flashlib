
require 'rubygems'
require 'sinatra/base'
require 'haml'
require 'models/project'

class FlashLib < Sinatra::Base
  
  get '/projects' do
    @projects = Project.all
    haml :projects
  end
  
  put '/project/:id' do
    Project.save
  end
  
end