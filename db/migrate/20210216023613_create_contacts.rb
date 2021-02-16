class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :surname
      t.integer :company_id

      t.timestamps
    end
  end
end
