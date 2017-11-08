class CreatePlayer < Neo4j::Migrations::Base
  def up
    add_constraint :Player, :uuid
  end

  def down
    drop_constraint :Player, :uuid
  end
end
