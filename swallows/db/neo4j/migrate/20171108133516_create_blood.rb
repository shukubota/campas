class CreateBlood < Neo4j::Migrations::Base
  def up
    add_constraint :Blood, :uuid
  end

  def down
    drop_constraint :Blood, :uuid
  end
end
