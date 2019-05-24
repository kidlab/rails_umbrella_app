Rails.application.routes.draw do
  mount SubRails::Engine, at: 'sub_rails'
  mount SubRails2::Engine, at: 'sub_rails2'
end
