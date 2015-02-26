class Content < ActiveRecord::Base
  belongs_to :contentperpage
  validates :text ,:presence => true
  # Paperclip
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pic, :content_type => /^image\/(png|gif|jpeg)/, :message => 'only (png/gif/jpeg) images'

end
