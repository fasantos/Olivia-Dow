class ContactsController < ApplicationController
  def new 
    @contact = Contact.new    
  end
  
  def create
    @contact = Contact.new(contacts_params)

    if contacts_params[:nickname].blank?
      ContactsMailer.request_contact(@contact).deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end
  
  private
  
  def contacts_params  
    params.require(:contact).permit(:name, :email, :message, :nickname)
  end
end
