class SchoolClass < ApplicationRecord
  attribute :number
  attribute :section

  has_many :teachers

  def class_to_s
    "#{number}#{section.upcase}"
  end

end
