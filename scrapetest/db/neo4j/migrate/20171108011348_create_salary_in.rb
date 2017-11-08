class CreateSalaryIn < Neo4j::Migrations::Base
  def up
    add_constraint :SalaryIn, :uuid
  end

  def down
    drop_constraint :SalaryIn, :uuid
  end
end
