class CreateReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :rating, :integer
      t.column :trip_id, :integer
      t.column :user_id, :integer
    end
  end
end
