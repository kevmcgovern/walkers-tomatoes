tmdb_api_key = ENV['TMDB_API_KEY']
if tmdb_api_key.nil?
  puts "Please set your MovieDB key with"
  puts "$ export TMDB_API_KEY=YOUR_TMDb_KEY"
  puts "or get/generate new key within API > Details section"
  puts "on your acount TMDb page https://www.themoviedb.org/login"
else
puts "TMDB API KEY: #{tmdb_api_key}"
end
Tmdb::Api.key(tmdb_api_key)
Tmdb::Api.language("en")
