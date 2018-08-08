class Activity < ApplicationRecord
  belongs_to :button

  def self.today
    where created_at: Time.now.beginning_of_day..Time.now
  end

  def duration
    created_at - finished_at
  end
end
