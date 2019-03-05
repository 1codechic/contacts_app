class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def all_contacts
    @person = Contact.all
    render 'all_contacts_view.json.jbuilder'
  end

end
