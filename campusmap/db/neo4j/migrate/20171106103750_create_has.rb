class CreateHas < Neo4j::Migrations::Base
  def up
    add_constraint :Has, :uuid
  end

  def down
    drop_constraint :Has, :uuid
  end
end
