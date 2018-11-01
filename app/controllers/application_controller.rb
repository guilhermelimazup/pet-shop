class ApplicationController < ActionController::API
  before_action :authenticate_request
    attr_reader :current_user

    def current_order
      @current_order = CurrentOrder.call(request.headers).result
    end

    private

    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      puts @current_user
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
end
