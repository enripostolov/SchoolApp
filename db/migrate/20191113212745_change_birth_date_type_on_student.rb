class ChangeBirthDateTypeOnStudent < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :birth_date, 'date USING birth_date::date'
  end
end
