class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.column :location, :string
      t.column :planet, :string
      t.column :locals, :string
      t.column :transportation, :string

      t.timestamps
    end
  end
end
