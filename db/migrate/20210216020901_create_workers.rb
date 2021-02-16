class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.integer :user_id
      t.integer :component_id

      t.timestamps
    end
  end
end
