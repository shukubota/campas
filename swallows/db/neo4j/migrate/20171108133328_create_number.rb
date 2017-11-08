class CreateNumber < Neo4j::Migrations::Base
  def up
    add_constraint :Number, :uuid
  end

  def down
    drop_constraint :Number, :uuid
  end
end
