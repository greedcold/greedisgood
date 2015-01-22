class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:spend, :new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  respond_to :html

def spend
    @listings = Listing.where(user: current_user)
  end

  def index
    @listings = Listing.all
    respond_with(@listings)
  end

  def show
    respond_with(@listing)
  end

  def new
    @listing = Listing.new
    respond_with(@listing)
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    @listing.save
    respond_with(@listing)
  end

  def update
    @listing.update(listing_params)
    respond_with(@listing)
  end

  def destroy
    @listing.destroy
    respond_with(@listing)
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:date, :event, :price)
    end

    def check_user
    # if current_user != @listing.user
     #  redirect_to root_url, alert: "you are not acces to this listing"
    #end
  end
end
