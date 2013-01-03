class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.string :interface
      t.integer :switch_id
      t.string :status

      t.timestamps
    end
  end
end
