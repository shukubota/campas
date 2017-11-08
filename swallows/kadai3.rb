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
#Player
#Position
#Birthday
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
	Birthday.create(name: d)
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
	Throwbat.create(name: d)
end




datainv[10].each do |d|
	Place.create(name: d)
end




datainv[11].each do |d|
	Salary.create(name: d)
end








data.each do |f|
	Player.create(name: f[1])
	a=Player.find_by(name: f[1])




	b=Number.find_by(name: f[0])
	a.numbers<<b
	


	b=Position.find_by(name: f[2])
	a.positions<<b


	b=Birthday.find_by(name: f[3])
	a.birthdays<<b

	b=Age.find_by(name: f[4])
	a.ages<<b




	b=Length.find_by(name: f[5])
	a.lengths<<b

	b=Height.find_by(name: f[6])
	a.heights<<b


	b=Weight.find_by(name: f[7])
	a.weights<<b


	b=Blood.find_by(name: f[8])
	a.bloods<<b


	b=Throwbat.find_by(name: f[9])
	a.throwbats<<b


	b=Place.find_by(name: f[10])
	a.places<<b


	b=Salary.find_by(name: f[11])
	a.salaries<<b





end









