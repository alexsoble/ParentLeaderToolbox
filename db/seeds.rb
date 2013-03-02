categories = [
	{ :name => 'Identify Opportunities' },
	{ :name => 'Collaborate' },
	{ :name => 'Raise the Bar' },
	{ :name => 'Support Systems' },
	{ :name => 'Fundraising' },
	{ :name => 'Sell the Dream' }
]

Category.destroy_all
categories.each do |category|
  c = Category.new
  c.name = category[:name]
  c.save
end


tools = [
	{ :name => 'Find your neighborhood school', 
	  :category_id => Category.find_by_name('Identify Opportunities').id },
	{ :name => 'Get in touch with your alderman',
		:category_id => Category.find_by_name('Identify Opportunities').id },
	{ :name => 'Gather a team',
		:category_id => Category.find_by_name('Identify Opportunities').id },
	{ :name => 'Reach out to the Chamber of Commerce',
		:category_id => Category.find_by_name('Identify Opportunities').id }
]


Tool.destroy_all
tools.each do |tool|
  t = Tool.new
  t.name = tool[:name]
  t.category_id = tool[:category_id]
  t.save
end
