class AddFieldsToBudgetInvestments < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Budget::Investment.add_translation_fields! problem: :text
        Budget::Investment.add_translation_fields! petition: :text
        Budget::Investment.add_translation_fields! organization: :text
        Budget::Investment.add_translation_fields! capacities: :text
        Budget::Investment.add_translation_fields! cooperation: :text
        Budget::Investment.add_translation_fields! exchange: :text
      end

      dir.down do
        remove_column :budget_investment_translations, :problem
        remove_column :budget_investment_translations, :petition
        remove_column :budget_investment_translations, :organization
        remove_column :budget_investment_translations, :capacities
        remove_column :budget_investment_translations, :cooperation
        remove_column :budget_investment_translations, :exchange
      end
    end
  end
end
