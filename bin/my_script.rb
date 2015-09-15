require 'addressable/uri'
require 'rest-client'


#def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
    puts RestClient.post(
      url,
      { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
    )
  rescue Exception => e
    puts e.message
    #raise "name and email must not be nil"
  end
#end

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html',

).to_s

url_get = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html?var1=val1'
).to_s

url_post = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html'
).to_s

url_id = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html/:id'
).to_s

# puts RestClient.post(url_post, {
#   'some_category[a_key]' => 'another value',
#   'some_category[a_second_key]' => 'yet another value',
#   'some_category[inner_inner_hash][key]' => 'value',
#   'something_else' => 'aaahhhhh'
#   })

#puts RestClient.get(url)
