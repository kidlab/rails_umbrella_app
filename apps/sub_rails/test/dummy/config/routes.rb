Rails.application.routes.draw do
  mount SubRails::Engine => "/sub_rails"
end
