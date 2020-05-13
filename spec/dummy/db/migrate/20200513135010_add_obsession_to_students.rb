class AddObsessionToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :obsession, polymorphic: true
  end
end
