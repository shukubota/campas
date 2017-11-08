class CreateBirthday < Neo4j::Migrations::Base
  def up
    add_constraint :Birthday, :uuid
  end

  def down
    drop_constraint :Birthday, :uuid
  end
end
