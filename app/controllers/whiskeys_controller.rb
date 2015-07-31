class WhiskeysController < ApplicationController
  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new(whiskey_params)
    if @whiskey.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @whiskey = Whiskey.find(params[:id])
    @comment = Comment.new
  end

private
  def whiskey_params
      params.require(:whiskey).permit(:name, :region, :country, :wtype, :malt, :age, :price, :abv)
  end

end
