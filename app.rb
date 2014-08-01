require 'sinatra'
require 'json/pure'
require 'oauth'

get '/' do

	# access tokens cut out, pasted in at runtime

    begin

		configuration = {:site => 'https://api.linkedin.com'}

		consumer = OAuth::Consumer.new(api_key, api_secret, configuration)

		access_token = OAuth::AccessToken.new(consumer, user_token, user_secret)

		response = access_token.get('http://api.linkedin.com/v1/people/~:(positions,educations)?format=json')

		content_type :json

		return response.body

	rescue

		halt 500

	end
end
