class FormImage < ApplicationRecord
  belongs_to :user_form

  mount_uploader :main_image, FormImageUploader
end
