class AddStudent < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :birth_date
      t.string :fiscal_code
      t.datetime :enrollment_date

      t.timestamps
    end
  end
end
