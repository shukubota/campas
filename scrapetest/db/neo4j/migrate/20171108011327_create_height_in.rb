class CreateHeightIn < Neo4j::Migrations::Base
  def up
    add_constraint :HeightIn, :uuid
  end

  def down
    drop_constraint :HeightIn, :uuid
  end
end
