class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :Customer
      t.string :Worker
      t.string :Price
      t.string :Address
      t.datetime :Date
      t.timestamp :Time
      t.string :status

      t.timestamps
    end
  end
end
