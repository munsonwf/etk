class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :for
      t.datetime :date
      t.datetime :time
      t.string :caller_name
      t.string :caller_of
      t.string :phone_number
      t.string :phone_message
      t.string :call_taker

      t.timestamps null: false
    end
  end
end
