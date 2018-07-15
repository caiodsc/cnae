class Record < ApplicationRecord
  belongs_to :kind
  register_currency :brl
  monetize :amount_cents
  #before_create :record_date_utc
  validates :kind_id, acceptance: { accept: [1, 4], message: 'kind must be 1 or 4' }
  RECORD_TZ = '-03:00'

  #def format_time
  #  self.event_time.strftime("%H:%M:%S")
  #end

  #private
  #  def record_date_utc
  #    self.event_date = self.event_time.utc.to_date
  #    self.event_time = self.event_time.utc.to_time
  #  end
end
