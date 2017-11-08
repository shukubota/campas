class CreateSalary < Neo4j::Migrations::Base
  def up
    add_constraint :Salary, :uuid
  end

  def down
    drop_constraint :Salary, :uuid
  end
end
