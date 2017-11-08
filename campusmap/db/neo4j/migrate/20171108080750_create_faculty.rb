class CreateFaculty < Neo4j::Migrations::Base
  def up
    add_constraint :Faculty, :uuid
  end

  def down
    drop_constraint :Faculty, :uuid
  end
end
