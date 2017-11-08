class CreateWeight < Neo4j::Migrations::Base
  def up
    add_constraint :Weight, :uuid
  end

  def down
    drop_constraint :Weight, :uuid
  end
end
