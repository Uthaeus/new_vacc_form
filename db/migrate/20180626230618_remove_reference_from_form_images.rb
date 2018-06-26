class RemoveReferenceFromFormImages < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :form_images, :user_forms
  end
end
