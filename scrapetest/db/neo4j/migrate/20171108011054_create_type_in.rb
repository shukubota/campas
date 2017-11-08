class CreateTypeIn < Neo4j::Migrations::Base
  def up
    add_constraint :TypeIn, :uuid
  end

  def down
    drop_constraint :TypeIn, :uuid
  end
end
