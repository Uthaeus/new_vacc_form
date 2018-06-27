class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true, on_delete: :cascade
      t.references :discussion, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
