class CreateCasefiles < ActiveRecord::Migration
  def change
    create_table :casefiles do |t|
      t.string :client
      t.string :matter
      t.string :file_number
      t.datetime :date_opened
      t.datetime :date_closed
      t.string :location

      t.timestamps null: false
    end
  end
end
