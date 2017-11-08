class CreateLength < Neo4j::Migrations::Base
  def up
    add_constraint :Length, :uuid
  end

  def down
    drop_constraint :Length, :uuid
  end
end
