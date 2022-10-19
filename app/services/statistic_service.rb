class InfoService
  def perform(user, tax, ticker, long_short, volume, price_in, price_out)
    ActiveRecord::Base.trade do
      
      user.update!(balance: user.balance + )
    end
  end
end