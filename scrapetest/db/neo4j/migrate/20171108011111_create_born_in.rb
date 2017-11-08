class CreateBornIn < Neo4j::Migrations::Base
  def up
    add_constraint :BornIn, :uuid
  end

  def down
    drop_constraint :BornIn, :uuid
  end
end
