class CreateBorn < Neo4j::Migrations::Base
  def up
    add_constraint :Born, :uuid
  end

  def down
    drop_constraint :Born, :uuid
  end
end
