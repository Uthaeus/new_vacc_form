class UserForm < ApplicationRecord
  belongs_to :user
  has_many :form_images
  has_many :vaccs

  accepts_nested_attributes_for :vaccs,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['rec'].blank? }

  accepts_nested_attributes_for :form_images,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['main_image'].blank? }
end
