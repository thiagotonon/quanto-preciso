class Notice < ApplicationRecord

  validates_presence_of :title, :posted_at

end