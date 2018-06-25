class Vacc < ApplicationRecord
  belongs_to :user_form

  validates_presence_of :title
end
