class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :cell
      t.string :fax
      t.string :email
      t.string :company
      t.string :title

      t.timestamps null: false
    end
  end
end
