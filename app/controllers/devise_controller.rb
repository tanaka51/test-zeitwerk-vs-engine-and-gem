require File.join(Devise::Engine.called_from, '../../app/controllers/devise_controller')

class DeviseController
  before_action -> { puts 'action' }
end
