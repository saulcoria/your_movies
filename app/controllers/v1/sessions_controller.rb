class V1::SessionsController < ApplicationController

  def create
    person = Person.where(email: params[:email]).first

    if person.present? && person.valid_password?(params[:password])
      render json: person.as_json(only: [:id, :email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy

  end
end
