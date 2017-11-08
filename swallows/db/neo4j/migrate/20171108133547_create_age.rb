class CreateAge < Neo4j::Migrations::Base
  def up
    add_constraint :Age, :uuid
  end

  def down
    drop_constraint :Age, :uuid
  end
end
