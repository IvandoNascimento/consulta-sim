class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :cpf
      t.string :email
      t.string :specialty
      t.string :crm

      t.timestamps
    end
  end
end
