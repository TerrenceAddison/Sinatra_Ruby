require 'sinatra'
require 'rack'

addr_infos = Socket.ip_address_list.select(&:ipv4_private?)

final_address = addr_infos[0].ip_address

get '/' do
  @address = final_address
  erb :index
end
