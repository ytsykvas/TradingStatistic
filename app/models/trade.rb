class Trade < ApplicationRecord
  belongs_to :user

  validates :tax, presence: :true
  validates :ticker, presence: :true
  validates :long_short, acceptance: { accept: ['LONG', 'SHORT'] }, presence: :true
  validates :price_in, presence: :true
  validates :price_out, presence: :true
end
