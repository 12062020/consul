class AddSummaryToBudgetInvestments < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Budget::Investment.add_translation_fields! summary: :text
      end

      dir.down do
        remove_column :budget_investment_translations, :summary
      end
    end
  end
end
