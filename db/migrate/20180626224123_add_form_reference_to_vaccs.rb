class AddFormReferenceToVaccs < ActiveRecord::Migration[5.1]
  def change
    add_reference :vaccs, :user_forms, foreign_key: true, on_delete: :cascade
  end
end
