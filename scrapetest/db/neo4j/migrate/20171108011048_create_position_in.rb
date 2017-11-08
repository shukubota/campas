class CreatePositionIn < Neo4j::Migrations::Base
  def up
    add_constraint :PositionIn, :uuid
  end

  def down
    drop_constraint :PositionIn, :uuid
  end
end
