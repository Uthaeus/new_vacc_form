class RemoveReferenceFromVaccs < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :vaccs, :user_forms

    
  end
end
