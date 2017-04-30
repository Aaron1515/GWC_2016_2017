class AddColumnMember < ActiveRecord::Migration[5.0]
  def change
  	add_column :members, :last_name, :string
  	add_column :members, :age, :integer
  	add_column :members, :gender, :string
		add_column :members, :disability, :text
		add_column :members, :how_you_found_us, :string
		add_column :members, :why_join_us, :string
		add_column :members, :user_name, :string
		add_column :members, :continent, :string
  end
end
