class ContactsController < ApplicationController

  def create
    @contact = Contact.new(permitted_contact_params)

    if @contact.save
      render json: @contact
    else
      render json: @contact.errors, status: 422
    end
  end

  protected

    def permitted_contact_params
      params.require(:contact).permit(:email, :subject, :message)
    end

end