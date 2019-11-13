class Studentparent < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |p|
      p.string :name
      p.string :surname
      p.string :email
    end

    create_table :students do |s|
      s.string :name
      s.string :surname
      s.string :fiscal_code
      s.date :birth_date
      s.string :enrollment_date
    end

    create_join_table :students, :parents do |t|
      t.index :student_id
      t.index :parent_id
    end
  end
end
