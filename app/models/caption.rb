class Caption < ActiveRecord::Base
  validates :text, presence: true
end
