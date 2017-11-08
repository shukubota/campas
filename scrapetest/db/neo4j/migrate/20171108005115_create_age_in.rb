class CreateAgeIn < Neo4j::Migrations::Base
  def up
    add_constraint :AgeIn, :uuid
  end

  def down
    drop_constraint :AgeIn, :uuid
  end
end
