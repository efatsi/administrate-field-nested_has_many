# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      # TODO Add authentication logic here.
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end

    private

    def read_param_value(data)
      # Administrate runs the following conditional check:
      # if data.is_a?(ActionController::Parameters) && data[:type]
      # So we inject some code before that to deeply transform nested values
      # eg: NestedHasMany field data
      if data.is_a?(ActionController::Parameters) && !data[:type]
        data.transform_values { |v| read_param_value(v) }
      else
        super
      end
    end
  end
end
