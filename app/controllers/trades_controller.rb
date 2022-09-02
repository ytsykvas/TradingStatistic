class TradesController < ApplicationController

  def index
    @trades = User.find(params[:id]).trades
  end

  def new
    @trade = Trade.new
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def edit
        
  end

  def create
        
  end

  def destroy
    @trade = Trade.find(params[:id]).destroy
  end

  private

  def trade_params
    params.require(:trade).permit(:tax, :ticker, :long_short, :volume, :price_in, :price_out)
  end
end