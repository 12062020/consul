class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        add_column :users, :first_name, :string
        add_column :users, :last_name, :string
        add_column :users, :plz, :string
        add_column :users, :ort, :string
        add_column :users, :area, :boolean
        add_column :users, :marketing, :boolean
      end

      dir.down do
        remove_column :users, :first_name, :string
        remove_column :users, :last_name, :string
        remove_column :users, :plz, :string
        remove_column :users, :ort, :string
        remove_column :users, :area, :boolean
        remove_column :users, :marketing, :boolean
      end
    end
  end
end
