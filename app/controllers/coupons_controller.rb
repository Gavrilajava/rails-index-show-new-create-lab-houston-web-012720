class CouponsController < ApplicationController

  before_action :current_coupon, only: [:show, :edit, :destroy, :update]

  def index
    @coupons = Coupon.all
  end

  def show

  end

  def destroy
    @coupon.destroy
    redirect_to coupons_path
  end

  def update
    @coupon.update(coupon_params)
    redirect_to coupons_path
  end


  def edit

  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  private

  def current_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
