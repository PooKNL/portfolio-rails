class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :link, presence: true

  def self.order_by_date
    order(:datetime)
  end
end
