require 'spec_helper'

# Test for static pages, mostly to see that routing is working properly
describe "StaticPages" do
	describe "Home Page" do
		it "Should return 200 when visiting '/'" do
			# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/'
			page.status_code.should be(200)
		end
	end

	describe "About Page" do
		it "Should return 200 when visiting /about" do
			visit '/about'
			page.status_code.should be(200)
		end
	end
end

