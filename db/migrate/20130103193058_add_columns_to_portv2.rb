class AddColumnsToPortv2 < ActiveRecord::Migration
  def change
    add_column :ports, :nativevlan, :string
  end
end
