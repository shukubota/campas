class Type < Neo4j::Migrations::Base
  def up
  	drop_constraint :Type, :uuid	    
  end

  def down
    raise Neo4j::IrreversibleMigration
  end
end
