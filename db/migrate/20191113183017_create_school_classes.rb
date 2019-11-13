class CreateSchoolClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :school_classes do |t|
      t.string :number
      t.string :section

      t.timestamps
    end
  end
end
