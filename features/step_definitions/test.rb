Given("I get to the three website") do
	@three_homepage =  Superclass.new
	@three_homepage.three_home_page.goToPage
	@three_homepage.three_home_page.assertTitle
end

Then("I can click on the iphone X pre-order button") do
	@three_homepage.three_home_page.findPreOrderButtonAndClick
	@three_homepage.three_home_page.assertPreOrderPage
end