APP = "hello"

$:.unshift(File.dirname(__FILE__))

task :default => [:run]

desc "run app locally"
task :run => "Gemfile.lock" do
  require 'hello'
  Sinatra::Application.run!
end
