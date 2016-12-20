require 'spec_helper'

module MyLinkedLists
	describe LinkedList do
		context "#initialize" do
			it "initializes head and tail with nil" do
				ll = LinkedList.new
				expect(ll.head).to eq nil
			end

			it "can change value of head and tail" do
				ll = LinkedList.new
				ll.head = "blue"
				expect(ll.head).to eq "blue"
			end
		end
	end
end