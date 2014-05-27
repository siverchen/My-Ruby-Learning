dir = File.dirname(__FILE__)
require dir + '/api/do'

api = WeiBoSDK::Api.new("")

# ret = api.oauth2("access_token", 'client_id' => '2467005410', 'redirect_uri' => 'http://omusic.cc', "grant_type" => "authorization_code", "code" => "6115db388bf11d61734a782e92017251", "client_secret" => "9424e682fbf1f1ae79f3dd9c2ff302ea")

#3094d44e569452982acb441683176150

# ret = api.statuses("public_timeline.json", {:count => 1})
# ret = api.suggestions.users.hot.exec(:screen_name => 'Siverchen')
# suggestions/users/hot

ret = api.statuses.update.post(:status => "I am sending text from my ruby sdk")

puts ret

