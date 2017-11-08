class CreateType < Neo4j::Migrations::Base
  def up
    add_constraint :Type, :uuid
  end

  def down
    drop_constraint :Type, :uuid
  end
end
