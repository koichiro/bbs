class Entry < ActiveRecord::Base
  validates :body, :presence => true
end
