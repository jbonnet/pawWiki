class Fragment < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  validates_uniqueness_of :title

  self.per_page = 10
end
