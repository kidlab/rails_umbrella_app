require_dependency "sub_rails2/application_controller"

module SubRails2
  class HelloController < ApplicationController
    def index
      render html: 'Hello from sub_rails2!'
    end
  end
end
