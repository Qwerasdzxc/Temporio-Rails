class CreateComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :components do |t|
      t.text :name

      t.timestamps
    end
  end
end
