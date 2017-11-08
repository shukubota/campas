class CreateNumberIn < Neo4j::Migrations::Base
  def up
    add_constraint :NumberIn, :uuid
  end

  def down
    drop_constraint :NumberIn, :uuid
  end
end
