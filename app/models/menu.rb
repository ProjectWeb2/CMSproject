class Menu < ActiveRecord::Base
  belongs_to :contentperpage
  belongs_to :sites
  validates :name , :link , :location , :typ , :presence => true
end
