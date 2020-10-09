class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact, status: :created, location: contact_url(@contact)
    else
      render json: @contact.errors, status: :unprocessed_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email)
  end

end
