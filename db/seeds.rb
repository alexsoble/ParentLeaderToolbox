categories = [
	{ :name => 'Renovating' },
	{ :name => 'Marketing' },
	{ :name => 'Fundraising' },
]

Category.destroy_all
categories.each do |category|
  c = Category.new
  c.name = category[:name]
  c.save
end


renovating_id = Category.find_by_name('Renovating').id
marketing_id = Category.find_by_name('Marketing').id
fundraising_id = Category.find_by_name('Fundraising').id



tools = [


	{ :name => 'Chicago Cares', 
		:url => 'http://www.chicagocares.org',
		:description => 'A clearinghouse that matches volunteers and projects for schools, parks and community organizations. All projects are led by trained leaders.',
	  :category_id => renovating_id },
	{ :name => 'One Brick / Chicago', 
		:url => 'http://chicago.onebrick.org/',
		:description => 'The Chicago chapter of a national organization that brings together volunteers for focused short term projects. Entirely volunteer-run, requires 4 to 8 weeks lead time for scheduling.',
	  :category_id => renovating_id },
	{ :name => 'School Library Exchange',
		:url => 'http://schoollibraryexchange.org/',
		:description => 'An internet gateway that connects parents with school librarians for book donations.',
		:category_id => renovating_id },
	{ :name => 'WITS (Working In The Schools)', 
		:url => 'http://www.witschicago.org',
		:description => 'WITS provides volunteers to provide one-on-one mentoring for CPS students through seven programs: Early Childhood, Mid-day Mentoring, Workplace Mentoring, Saturday Tutoring, Classroom Assistants and an Early Childhood Summer Program.',
	  :category_id => renovating_id },
	  
	  
	{ :name => 'Zealous Good', 
		:url => 'http://www.zealousgood.com/howwework/',
		:description => 'A Chicago-based web start-up that matches donors with products to donate with organizations in need of those products.',
	  :category_id => fundraising_id },	
	{ :name => 'How to Set Up a 501(c)3 Nonprofit',
		:url => 'http://www.wikihow.com/Start-a-501c3-Nonprofit-Organization',
		:description => 'A nice overview from Wikihow.',
		:category_id => fundraising_id },
	{ :name => 'A Guide for Organizing Not-for-Profit Corporations',
		:url => 'http://www.cyberdriveillinois.com/publications/pdf_publications/c165.pdf',
		:description => "A PDF booklet from the Illinois Secretary of State's office.",
		:category_id => fundraising_id },
	{ :name => 'Non-profit Legal Assessment Project',
		:url => 'http://nlap.illinoisprobono.org/',
		:description =>' From Illinois Pro Bono, resources that provide tax-exempt organizations with a legal assessment of their policies and procedures.',
		:category_id => fundraising_id },
	{ :name => 'Donors Forum', 
		:url => 'http://www.donorsforum.org/',
		:description => 'A one-stop shop for everything you need to know about grants and fundraising. The Chicago office is the premier resource for networking and education, information and knowledge, and leadership and advocacy on behalf of philanthropy and nonprofits in Illinois.',
	  :category_id => fundraising_id },
	{ :name => 'Donors Choose', 
		:url => 'http://www.donorschoose.org',
		:description => "The motto is the mission: 'Teachers ask. You choose.' Teachers ask for funding for specific classroom projects, then donors can choose what they'd like to fund. Projects can be sorted by state, city, county and district.",
	  :category_id => fundraising_id },
	  
	  
	{ :name => 'Your Ward and Your Alderman',
		:url => 'http://www.cityofchicago.org/city/en/about/council.html',
		:description => 'City of Chicago website includes links to a ward locator and contact information for alderman. Your alderman can be a key ally as you fight to improve your local school.',
		:category_id => marketing_id },
	{ :name => 'Chicagoland Chamber of Commerce',
		:url => 'http://www.chicagolandchamber.org/wdk_cc/',
		:description => 'An advocacy group for business; can help put you in touch with local business leaders.',
		:category_id => marketing_id },
	{ :name => 'Local Chambers of Commerce',
		:url => 'http://dir.yahoo.com/regional/u_s__states/illinois/cities/chicago/business_and_shopping/business_to_business/trade/chambers_of_commerce/',
		:description => 'Directory of Chicago neighborhood and ethnic chambers of commerce.',
		:category_id => marketing_id },

	
	{ :name => 'Neighborhood Parents Network',
		:url => 'http://www.npnparents.org',
		:description => 'For over 30 years, connecting families with the resources they need to navigate parenting in the city. Famous for its School Fairs and School Directory. Set up a booth and hawk your school to attract more parents.',
		:category_id => marketing_id },
	{ :name => 'Branding Your School Image for Better Public Perception',
		:url => 'http://educationnow.weebly.com/1/post/2010/3/branding-school-image-for-better-public-perception.html',
		:description => 'Useful blog post by Ryan Satterfield, an assistant principal in an Atlanta-area middle school.',
		:category_id => marketing_id },
	{ :name => 'Building a Brand for Public Education and K-12 Schools',
		:url => 'http://blog.lpainc.com/lpa-blog/bid/30092/Building-a-Brand-for-Public-Education-and-K-12-Schools',
		:description => 'An article by architect Donald Pender on how planning and design integrate into a branding plan.',
		:category_id => marketing_id },
	{ :name => 'Putting Brands to Work for Public Schools',
		:url => 'http://www.edweek.org/ew/articles/2012/11/07/11freeman.h32.html',
		:description => 'Most of the article is locked behind a pay-wall; take a 2-week free trial to access.',
		:category_id => marketing_id },
	{ :name => 'A Brand Identity Guide for Edina Public Schools',
		:url => 'http://www.edina.k12.mn.us/sites/edina.k12.mn.us/files/attachments/14/downloads/Edina-Brand-Identity-Guide2008.pdf',
		:description => 'Fabulous. A how-to-brand-your-school primer from an Minnesota public school. (PDF)',
		:category_id => marketing_id },
	{ :name => 'Public Relations 101: How-To Tips for School Administrators',
		:url => 'http://www.educationworld.com/a_admin/admin/admin123.shtml',
		:description => 'An older article from Education World, full of timeless tips.',
		:category_id => marketing_id },
	{ :name => 'National School Public Relations Association',
		:url => 'http://www.nspra.org/',
		:description => 'Trade organization for school public relations professionals; a great resource.',
		:category_id => marketing_id }
		
		]

Tool.destroy_all
tools.each do |tool|
  t = Tool.new
  t.name = tool[:name]
  t.url = tool[:url]
  t.description = tool[:description]
  t.category_id = tool[:category_id]
  t.save
end