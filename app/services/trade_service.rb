class TradeService

  def perform(user, tax, long_short, volume, price_in, price_out)

    ActiveRecord::Base.trade do
  
      if long_short == "LONG"
        net = (price_out - price_in)*volume - tax*volume*2
      else
        net = (price_in - price_out)*volume - tax*volume*2
      end

      balance = user.balance + net
      user.update!(balance: balance)
      net_per_share = net/volume
    end
  end

end