class Number 
  include Neo4j::ActiveNode
  property :name, type: Integer
    has_many :in, :players,type: :Number,model_class: :Player
	    validates :name,uniqueness: true


end
