class Menu < ActiveRecord::Base
  belongs_to :contentperpage
  belongs_to :sites
  belongs_to :location
  belongs_to :typ
  validates :name ,  :presence => true
end
