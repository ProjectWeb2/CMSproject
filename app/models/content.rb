class Content < ActiveRecord::Base
  belongs_to :contentperpage
  validates :text ,:presence => true
  # Paperclip
  has_attached_file :photo,
                    :styles => {
                        :thumb=> "100x100#",
                        :small  => "150x150>" }

end
