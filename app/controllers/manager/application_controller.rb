module Manager
  class ApplicationController < ::ApplicationController
    layout 'manager'
    before_action :authenticate_user!
  end
end
