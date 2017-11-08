class CreatePosition < Neo4j::Migrations::Base
  def up
    add_constraint :Position, :uuid
  end

  def down
    drop_constraint :Position, :uuid
  end
end
