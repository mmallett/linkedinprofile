require 'rubygems'
require 'sinatra'
require 'json/pure'
require 'oauth'

require 'pp'

set :port, 8888

get '/linkedin' do

	configuration = {:site => 'https://api.linkedin.com'}

	consumer = OAuth::Consumer.new(api_key, api_secret, configuration)

	access_token = OAuth::AccessToken.new(consumer, user_token, user_secret)

	response = ('http://api.linkeidn.com/v1/people/~?format=json')

	content_type :json

	puts PP.pp(response)

	return response.to_json
end
