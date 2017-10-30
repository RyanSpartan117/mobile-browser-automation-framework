class Threehomepage

	def initialize
		@driver = $driver.driver
		
	end
	def goToPage
		@driver.get("http://www.three.co.uk")
	end

	def assertTitle
		expect(@driver.title).to eql("Savings on SIM, Smartphones and Mobile Broadband | Three")
	end

	def findPreOrderButtonAndClick
		preOrder = @driver.find_element(:link, 'Pre-order.')
		preOrder.click
	end

	def assertPreOrderPage
		expect(@driver.title).to eql("iPhone X Pre-order on contract deals | Three.")
	end
end