class CreateThrowbat < Neo4j::Migrations::Base
  def up
    add_constraint :Throwbat, :uuid
  end

  def down
    drop_constraint :Throwbat, :uuid
  end
end
