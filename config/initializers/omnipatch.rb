DeviseTokenAuth::OmniauthCallbacksController.class_eval do
  def resource_class(mapping = nil)
    User
  end
end