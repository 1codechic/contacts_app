class Api::ContactsController < ApplicationController

  def get_contact
    @person = Contact.first
    render 'contact_view.json.jbuilder'
  end

  def all_contacts
    @person = Contact.all
    render 'all_contacts_view.json.jbuilder'
  end

end
