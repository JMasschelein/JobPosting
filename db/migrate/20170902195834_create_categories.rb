class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :public, default: true
      t.text :description

      t.timestamps
    end
  end
end