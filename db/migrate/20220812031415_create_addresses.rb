class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :CEP
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :complement

      t.timestamps
    end
  end
end
