class AddFormReferenceToFormImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :form_images, :user_forms, foreign_key: true, on_delete: :cascade
  end
end
