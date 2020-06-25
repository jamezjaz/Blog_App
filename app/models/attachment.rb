class Attachment < ApplicationRecord
  belongs_to :post_id
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
end
