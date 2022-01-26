class AddRankRefToEmployee < ActiveRecord::Migration[7.0]
  def self.up
    add_reference :employees, :rank, foreign_keys: true
    change_column :employees, :rank_id, :integer, foreign_keys: true
  end

  def self.down
    remove_column :employees, :employee_id
  end
end
