class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    change_table :posts do |t|
      t.belongs_to :category, index: true
    end
  end
end
