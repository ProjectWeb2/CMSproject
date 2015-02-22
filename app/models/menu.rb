class Menu < ActiveRecord::Base
  belongs_to :contentperpage
  belongs_to :sites
end
