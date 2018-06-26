class RemoveColumnFromFormImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :form_images, :thumg_image
  end
end
