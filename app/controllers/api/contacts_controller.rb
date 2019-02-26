class Api::ContactsController < ApplicationController

  def get_contact
    @person = Contact.first
    render 'contact_view.json.jbuilder'
  end

end
