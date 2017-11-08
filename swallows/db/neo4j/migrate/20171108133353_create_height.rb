class CreateHeight < Neo4j::Migrations::Base
  def up
    add_constraint :Height, :uuid
  end

  def down
    drop_constraint :Height, :uuid
  end
end
