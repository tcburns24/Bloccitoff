class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.items.build(item_params)
  end


  private

  def item_params
    params.require(:item)
  end
end
