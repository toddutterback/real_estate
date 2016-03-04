class HomesController < ApplicationController
before_action :seller
  before_action :home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = @seller.homes.all
  end

  def show
    @home = Home.find(params[:seller_id])
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to seller_home_path(@seller, @home)
    else
      render :edit
    end
  end

  def new
    @home = Home.new
  end

  def create
    @home = @seller.homes.new(home_params)
    if @address.save
      redirect_to seller_homes_path(@seller)
    else
      render :new
    end
  end

  def destroy
    @home.destroy
    redirect_to seller_homes_path(@seller)
  end

  private
    def home_params
      params.require(:home).permit(:sq_ft, :bedroom, :bath, :year, :price, :garage, :pool)
    end

    def seller
      @seller = Seller.find(params[:seller_id])
    end

    def home
      @seller.homes.find(params[:id])
    end
end