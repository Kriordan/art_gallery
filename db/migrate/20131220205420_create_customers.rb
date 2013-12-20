class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :email, default: 'Unknown'
      t.integer :amount_spent, default: nil

      t.timestamps
    end
  end
end
