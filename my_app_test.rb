require 'my_app'
require 'test/unit'
require 'rack/test'
require 'sinatra/test/unit'

set :environment, :test

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hi_returns_hello_world
    get '/hi'
    assert last_response.ok?
    assert_equal 'Hello World!', last_response.body
  end
end
