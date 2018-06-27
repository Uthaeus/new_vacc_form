class CreateDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
