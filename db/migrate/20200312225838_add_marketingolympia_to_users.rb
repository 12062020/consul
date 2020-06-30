class AddMarketingolympiaToUsers < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        add_column :users, :marketing_olympia, :boolean
      end

      dir.down do
        remove_column :users, :marketing_olympia, :boolean
      end
    end
  end
end
