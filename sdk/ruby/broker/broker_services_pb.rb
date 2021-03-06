# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: broker/broker.proto for package 'go.micro.broker'

require 'grpc'
require 'broker/broker_pb'

module Go
  module Micro
    module Broker
      module Broker
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'go.micro.broker.Broker'

          rpc :Publish, PublishRequest, Empty
          rpc :Subscribe, SubscribeRequest, stream(Message)
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
