class CreateCampu < Neo4j::Migrations::Base
  def up
    add_constraint :Campu, :uuid
  end

  def down
    drop_constraint :Campu, :uuid
  end
end
