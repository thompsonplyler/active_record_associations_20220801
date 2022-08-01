class CreateFeedings < ActiveRecord::Migration[6.1]
  def change
    create_table :feedings do |t|
      t.datetime :time
      t.integer :dog_id
      t.timestamps
      # t.belongs_to :dog <-- does what line 5 does, with more ActiveRecords 
      # t.references :dog <-- Alias of belongs_to
    end
  end
end
