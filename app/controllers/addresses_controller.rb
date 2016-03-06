class AddressesController < ApplicationController
  before_action :seller
  before_action :home
  before_action :address, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = @home.address.new(address_params)
    if @address.save
      redirect_to seller_home_address_path(@seller, @homer, @address)
    else
      render :new
    end
  end

  def edit
    @address = Address.new
  end

  def update
    if @address.update(address_params)
      redirect_to seller_home_address_path(@seller, @home, @address)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to seller_home_path(@seller, @home)
  end

  private
    def address_params
      params.require(:address).permit(:city, :state, :zip, :street)
    end

    def seller
      @seller = Seller.find(params[:seller_id])
    end

    def home
      @home = @seller.homes.find(params[:home_id])
    end

    def address
      @address = @home.address.find(params[:id])
    end
end
