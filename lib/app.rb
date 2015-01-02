require 'padrino'

Padrino::Logger::Config[:development] = { :log_level => :warn }


class Example < Padrino::Application

  set :root, File.join(File.dirname(__FILE__))

  get "/" do
    erb :'example/show.html'
  end

end


APP = Rack::Builder.new {
  map "/example" do
    run Example
  end
}
