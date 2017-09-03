class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :address
      t.string :postcal_code
      t.string :city
      t.string :country
      t.string :email
      t.string :password_digest
      t.string :phone_number

      t.timestamps
    end
  end
end
