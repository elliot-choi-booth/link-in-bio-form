class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form

    render({ :template => "item_templates/display_form"})
  end
  
end
