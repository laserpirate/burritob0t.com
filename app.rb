require 'rubygems'
require 'bundler'
Bundler.require

DataMapper.setup(:default, ENV["DATABASE_URL"])

class Burrito
  include DataMapper::Resource
  property :id, Serial
  
  # Cold ingredients
  property :sourcream, Integer
  property :salsa_mild, Integer
  property :salsa_hot, Integer
  property :salsa_pico, Integer
  property :guac, Integer
  
  # Hot ingredients
  property :beans_black, Integer
  property :beans_pinto, Integer
  property :rice, Integer
  property :cheese, Integer
  property :meat, Integer
  
  property :printed, Boolean
  
end

DataMapper.finalize
DataMapper.auto_upgrade!

set :root, File.dirname(__FILE__)

# Application URL's

get '/' do
  "BurritoB0t Yeah!"
end

get '/create' do
  :create
end