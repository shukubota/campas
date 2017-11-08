class Type 
  include Neo4j::ActiveNode
  property :name, type: String
    has_many :in, :player,types: :Type,model_class: :Player
	    validates :name,uniqueness: true


end
