class Content < ActiveRecord::Base
  belongs_to :contentperpage
  validates :text ,:presence => true
end
