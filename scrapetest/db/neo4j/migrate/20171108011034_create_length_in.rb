class CreateLengthIn < Neo4j::Migrations::Base
  def up
    add_constraint :LengthIn, :uuid
  end

  def down
    drop_constraint :LengthIn, :uuid
  end
end
