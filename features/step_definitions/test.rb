Given("I get to the three website") do
	driver.get("http://www.three.co.uk")
	expect(driver.title).to eql("Savings on SIM, Smartphones and Mobile Broadband | Three")
end

Then("I can click on the iphone X pre-order button") do
	preOrder = find_element(:link, 'Pre-order.')
	preOrder.click
	expect(driver.title).to eql("iPhone X Pre-order on contract deals | Three.")
end