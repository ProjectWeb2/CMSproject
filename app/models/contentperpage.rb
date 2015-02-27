class Contentperpage < ActiveRecord::Base
  has_many :contents
  has_many :menus
end
