class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def delete_item
  	@id = params[:id]

  	x = Item.find_by_id(@id)
  	x.destroy

  	redirect_to root_path 


  end

end
