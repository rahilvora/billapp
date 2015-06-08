class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.text :firstname
      t.text :lastname
      t.text :telephone
      t.text :email
      t.text :carmodel
      t.text :carnumber
      t.text :indate
      t.text :outdate
      t.text :operation1
      t.text :operation_1_amount
      t.text :operation2
      t.text :operation_2_amount
      t.text :operation3
      t.text :operation_3_amount
      t.text :operation4
      t.text :operation_4_amount
      t.text :operation5
      t.text :operation_5_amount
      t.text :total
      t.boolean :status, default: 0

      t.timestamps null: false
    end
  end
end
