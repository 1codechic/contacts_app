class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
    #shows only contacts of the current logged in user
    # if current_user
    #   @contacts = current_user.contacts
    #   render 'index.json.jbuilder'
    # else
    #   render json: ["You must login to see your contacts"]
    # end
   end

  def show
    p 'current user'
    p current_user
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      middle_name: params[:middle_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      user_id: User.first.id
    })
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.bio = params[:bio] || @contact.bio
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render 'show.json.jbuilder'
  end
end
