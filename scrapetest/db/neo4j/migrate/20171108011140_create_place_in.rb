class CreatePlaceIn < Neo4j::Migrations::Base
  def up
    add_constraint :PlaceIn, :uuid
  end

  def down
    drop_constraint :PlaceIn, :uuid
  end
end
