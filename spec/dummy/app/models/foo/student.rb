class Foo::Student < ApplicationRecord
  belongs_to :school

  # Students can be obsessed with a school, or another student
  belongs_to :obsession, polymorphic: true, optional: true
end
