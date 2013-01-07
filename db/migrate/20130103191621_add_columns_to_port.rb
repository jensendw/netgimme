class AddColumnsToPort < ActiveRecord::Migration
  def change
    add_column :ports, :vlans, :string
    add_column :ports, :mode, :string
  end
end
