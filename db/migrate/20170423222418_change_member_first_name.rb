class ChangeMemberFirstName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :members, :name, :first_name
  end
end
