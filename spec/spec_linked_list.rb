require 'spec_helper'

module MyLinkedLists
	describe LinkedList do
		context "#initialize" do
			it "initializes head with nil" do
				ll = LinkedList.new
				expect(ll.head).to eq nil
			end

			it "can change value of head" do
				ll = LinkedList.new
				ll.head = "blue"
				expect(ll.head).to eq "blue"
			end
		end

		context "#append" do
			it "adds a new node when head is nil" do
				ll = LinkedList.new
				ll.append("boom")
				expect(ll.head.value).to eq "boom"
				expect(ll.head.next_node).to eq nil
			end

			it "adds the node in the end of list" do
				ll = LinkedList.new
				ll.append("first item")
				ll.append("second item")
				expect(ll.head.value).to eq "first item"
				expect(ll.head.next_node.value).to eq "second item"
			end
		end

	end
end