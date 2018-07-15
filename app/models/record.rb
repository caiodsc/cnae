class Record < ApplicationRecord
  belongs_to :kind
  register_currency :brl
  monetize :amount_cents
end
