class Has 
  include Neo4j::ActiveRel

	from_class :University
	to_class :Faculty


end
