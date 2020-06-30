class AddFieldsToBudgetInvestments < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        add_column :budget_investments, :recipient_petition, :boolean
        add_column :budget_investments, :requirements_petition, :boolean
        add_column :budget_investments, :organization_checkbox, :boolean
        add_column :budget_investments, :share_online_checkbox, :boolean
        add_column :budget_investments, :share_offline_checkbox, :boolean
        add_column :budget_investments, :organization, :text
        add_column :budget_investments, :share_online, :text
        add_column :budget_investments, :share_offline, :text
        Budget::Investment.add_translation_fields! petition: :text
      end

      dir.down do
        remove_column :budget_investments, :recipient_petition, :boolean
        remove_column :budget_investments, :requirements_petition, :boolean
        remove_column :budget_investments, :organization_checkbox, :boolean
        remove_column :budget_investments, :share_online_checkbox, :boolean
        remove_column :budget_investments, :share_offline_checkbox, :boolean
        remove_column :budget_investments, :organization, :text
        remove_column :budget_investments, :share_online, :text
        remove_column :budget_investments, :share_offline, :text
        remove_column :budget_investment_translations, :petition
      end
    end
  end
end
