class AddFieldsToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :date, :datetime
    add_column :records, :diagnosis_title, :string
    add_column :records, :prescription, :text
    add_reference :records, :animal, null: false, foreign_key: true
    add_reference :records, :user, null: false, foreign_key: true
  end
end
