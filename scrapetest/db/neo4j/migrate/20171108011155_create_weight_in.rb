class CreateWeightIn < Neo4j::Migrations::Base
  def up
    add_constraint :WeightIn, :uuid
  end

  def down
    drop_constraint :WeightIn, :uuid
  end
end
