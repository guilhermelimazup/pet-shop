class AuthenticationController < ApplicationController
  #require 'faraday'
  skip_before_action :authenticate_request

  def authenticate 
    command = AuthenticateUser.call(params[:email], params[:password])
    if command.success?
      #@conn = new Faraday
      #@conn.post "/purchase/#{User.find_by_email(params[:email]).id}", to: "purchase#create"
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end


