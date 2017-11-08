class Length 
  include Neo4j::ActiveNode
  property :name, type: Integer
  validates :name,uniqueness: true


end
