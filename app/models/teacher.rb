class Teacher < ApplicationRecord
  attribute :name
  attribute :surname
  attribute :subjects, type: Array, default: []

  has_and_belongs_to_many :school_classes
  has_many :lectures

  def to_s
    "#{name.capitalize} #{surname.capitalize}"
  end
end
