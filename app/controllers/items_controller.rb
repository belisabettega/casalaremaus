class ItemsController < ApplicationController
  def new
  end

  def create
    @order = Order.find(params[:order_id])
    @item = Item.new(item_params)
    @item.order = @order

    if @item.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:order_id])
    @item.destroy
    redirect_to order_path(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:quantity, :donation_id, :order_id)
  end
end
