class CreateUserForms < ActiveRecord::Migration[5.1]
  def change
    create_table :user_forms do |t|
      t.references :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
