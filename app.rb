require 'bundler'
Bundler.require()

def fake_song(title, release_year, artist)
  {:title => title, :release_year => release_year, :artist => artist}
end

get '/' do
  '<h1>This is not a page that you should be at</h1><p>Please <a href="/">RTFM</a>!!!</p>'
end

get '/api/heat' do
  fake_song('Feel The Heat', 1986, 'Miranda Gardens').to_json
end

get '/api/garden' do
  fake_song('Play In My Garden ', 1990, 'Felicia Waxler').to_json
end

get '/api/hands' do
  fake_song('Feel My Hands', 2001, 'Tasha Underman').to_json
end
