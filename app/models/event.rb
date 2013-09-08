class Event < ActiveRecord::Base
  validates :organizer_name, :date, :title, :organizer_email, presence: true
  validates :title, uniqueness: true
  validates_format_of :organizer_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validate :event_date_is_in_the_future

def event_date_is_in_the_future
  errors.add(:date, "can't be in the past") if
  !date.blank? and date < Date.today
end

end
