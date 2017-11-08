class Birthday 
  include Neo4j::ActiveNode
  property :name, type: String
    has_many :in, :players,type: :Birthday,model_class: :Player
	    validates :name,uniqueness: true


end
