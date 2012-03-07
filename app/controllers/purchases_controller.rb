class PurchasesController < ApplicationController
  def create
    purchase = PurchaseTripContext.new(params[:purchase], current_user).call
    @purchase = PurchasePresenter.new(purchase)
    render :show
  end

  def show
    @purchase = PurchasePresenter.new(Purchase.find(params[:id]))
  end
end