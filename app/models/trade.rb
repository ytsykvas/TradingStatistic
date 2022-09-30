class Trade < ApplicationRecord
  validates :tax, presence: :true
  validates :ticker, presence: :true
  validates :long_short, acceptance: { accept: ['LONG', 'SHORT'] }, presence: :true
  enum transaction_type: {long: 'LONG', short: 'SHORT'}
  validates :price_in, presence: :true
  validates :price_out, presence: :true

  belongs_to :user
end
