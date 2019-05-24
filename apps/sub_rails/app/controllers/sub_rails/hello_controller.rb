require_dependency "sub_rails/application_controller"

module SubRails
  class HelloController < ApplicationController
    def index
      render html: 'Hello from sub_rails!'
    end
  end
end
