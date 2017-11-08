class CreateBloodIn < Neo4j::Migrations::Base
  def up
    add_constraint :BloodIn, :uuid
  end

  def down
    drop_constraint :BloodIn, :uuid
  end
end
