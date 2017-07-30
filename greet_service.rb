require 'grpc'
require 'helloworld_services_pb'

class GreetingService < HelloWorld::Greeter::Service

  def say_hello(hello_req, _unused_call)
    Greeting::HelloReply.new(message: "Hello #{hello_req.name}")
  end

  def say_hello_again(hello_req, _unused_call)
    Greeting::HelloReply.new(message: "Hello again, #{hello_req.name}")
  end
end
