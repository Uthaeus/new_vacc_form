class UserForm < ApplicationRecord
  belongs_to :user

  has_many :vaccs

  accepts_nested_attributes_for :vaccs,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['rec'].blank? }

  
end
