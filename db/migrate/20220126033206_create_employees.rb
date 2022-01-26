class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name, limit: 20
      t.integer :age, limit: 3
      t.string :birthday, limit:20
      t.string :address, limit: 50
      t.string :email, limit: 50
      t.string :password, min: 4, max: 20

      t.timestamps
    end
  end
end
