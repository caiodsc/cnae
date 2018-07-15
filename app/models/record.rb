class Record < ApplicationRecord
  belongs_to :kind
  register_currency :brl
  monetize :amount_cents
  validates :kind_id, acceptance: { accept: [1, 4], message: 'kind must be 1 or 4' }
end
