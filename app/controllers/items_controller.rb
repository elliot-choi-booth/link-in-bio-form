class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form

    render({ :template => "item_templates/display_form"})
  end


  def create_item
    i = Item.new

    i.link_url = params.fetch("link_url_param")
    i.link_desc = params.fetch("link_desc_param")
    i.thumbnail_url = params.fetch("thumbnail_url_param")
    i.save

    render({ :template => "item_templates/create"})
  end 
end
