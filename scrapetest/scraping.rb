require 'open-uri'
require 'nokogiri'




url='http://baseball-data.com/player/s/'


charset=nil


html=open(url) do |f|
	charset=f.charset
	f.read
end


page=Nokogiri::HTML.parse(html,nil,charset)



tag=[]







page.search('th').each do |p|
	pdum=p.text
	tag.push(pdum)
end


#print tag


list=[]

page.search('td').each do |p|
	pdum=p.text
	list.push(pdum)
end





line=list.length/tag.length



data=[]
for i in 0...line
	listdum=list.slice(i*tag.length,tag.length)
	#print listdum
	#puts " "
	data.push(listdum)
end

	


datainv=data.transpose



#Number
#Name
#Position
#Born
#Age
#Length
#height
#weight
#blood
#type
#place
#salary

datainv[0].each do |d|
	Number.create(name: d)
end


datainv[2].each do |d|
	Position.create(name: d)
end


datainv[3].each do |d|
	Born.create(name: d)
end



datainv[4].each do |d|
	Age.create(name: d)
end




datainv[5].each do |d|
	Length.create(name: d)
end




datainv[6].each do |d|
	Height.create(name: d)
end


datainv[7].each do |d|
	Weight.create(name: d)
end



datainv[8].each do |d|
	Blood.create(name: d)
end


datainv[9].each do |d|
	Type.create(name: d)
end




datainv[10].each do |d|
	Place.create(name: d)
end




datainv[11].each do |d|
	Salary.create(name: d)
end








data.each do |f|
	Name.create(name: f[1])
	from=Name.find_by(name: f[1])



	to=Number.find_by(name: f[0])
	NumberIn.create(from_node: from,to_node: to)
	
	
	to=Position.find_by(name: f[2])
	PositionIn.create(from_node: from,to_node: to)


	to=Born.find_by(name: f[3])
	BornIn.create(from_node: from,to_node: to)


	to=Age.find_by(name: f[4])
	AgeIn.create(from_node: from,to_node: to)


	to=Length.find_by(name: f[5])
	LengthIn.create(from_node: from,to_node: to)

	to=Height.find_by(name: f[6])
	HeightIn.create(from_node: from,to_node: to)


	to=Weight.find_by(name: f[7])
	WeightIn.create(from_node: from,to_node: to)


	to=Blood.find_by(name: f[8])
	BloodIn.create(from_node: from,to_node: to)


	to=Type.find_by(name: f[9])
	TypeIn.create(from_node: from,to_node: to)


	to=Place.find_by(name: f[10])
	PlaceIn.create(from_node: from,to_node: to)


	
	to=Salary.find_by(name: f[11])
	SalaryIn.create(from_node: from,to_node: to)



end









