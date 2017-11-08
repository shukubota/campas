class AgeIn 
  include Neo4j::ActiveRel
  	from_class :Name
	to_class :Age



end
