class CreateMember < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
    	t.string :name
    	t.belongs_to :user, index: true
    	t.string :background_color
    	t.string :font_color
    end
  end
end
