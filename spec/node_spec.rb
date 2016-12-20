require 'spec_helper'

module MyLinkedLists
	describe Node do
		context "#initailize" do
			it "initializes with nil by default" do
				n = Node.new
				expect(n.value).to eq nil
				expect(n.next_node).to eq nil
			end

			it "initializes with the value of head if given" do
				n = Node.new("head")
				expect(n.value).to eq "head"
			end
		end
	end
end