class AddCategoryToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :category_id, :integer
    add_index :jobs, :category_id
  end
end
