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

		context "#prepend" do
			it "adds node if head is nil" do
				ll = LinkedList.new
				ll.prepend("red")
				expect(ll.head.value).to eq "red"
			end

			it "adds node at the start of the list" do
				ll = LinkedList.new
				ll.prepend("red")
				ll.prepend("blue")
				expect(ll.head.value).to eq "blue"
				expect(ll.head.next_node.value).to eq "red"
			end

			it "adds node at the start of a two itemed list" do
				ll = LinkedList.new
				ll.prepend("blue")
				ll.prepend("red")
				ll.prepend("yellow")
				expect(ll.head.value).to eq "yellow"
				expect(ll.head.next_node.value).to eq "red"
				expect(ll.head.next_node.next_node.value).to eq "blue"
			end
		end

		context "#size" do
			it "returns 0 if list is empty" do
				ll = LinkedList.new
				expect(ll.size).to eq 0
			end

			it "returns 1 if list has an item" do
				ll = LinkedList.new
				ll.prepend("first item")
				expect(ll.size).to eq 1
			end

			it "returns correct size" do
				ll = LinkedList.new
				ll.prepend("first")
				ll.append("second")
				ll.prepend("third")
				expect(ll.size).to eq 3
			end
		end

		context "#first" do
			it "returns nil if the list is empty" do
				ll = LinkedList.new
				expect(ll.first).to eq nil
			end

			it "returns the first item of the list if the list is not empty" do
				ll = LinkedList.new
				ll.prepend("first")
				ll.prepend("second")
				expect(ll.first).to eq "second"
			end

			it "more #first method test" do
				ll = LinkedList.new
				ll.append("two")
				ll.append("one")
				expect(ll.first).to eq "two"
			end
		end

		context "#tail" do
			it "returns nil if the list is empty" do
				ll = LinkedList.new
				expect(ll.tail).to eq nil
			end

			it "returns the last item of the list if the list is not empty" do
				ll = LinkedList.new
				ll.prepend("blue")
				ll.append("red")
				expect(ll.tail).to eq "red"
			end

			it "returns last item part 2" do
				ll = LinkedList.new
				ll.prepend("a")
				ll.prepend("b")
				ll.prepend("c")
				expect(ll.tail).to eq "a"
			end
		end

		context "#at(index)" do
			it "returns the item specifed by the index" do
				ll = LinkedList.new
				ll.append("red")
				ll.append("trese")
				ll.append("moy")
				expect(ll.at(0)).to eq "red"
			end

			it "returns trese if passed 1 index" do
				ll = LinkedList.new
				ll.append("red")
				ll.append("trese")
				ll.prepend("moy")
				expect(ll.at(1)).to eq "red"
			end

			it "returns 3 if passed 2 index" do
				ll = LinkedList.new
				ll.prepend("3")
				ll.prepend("2")
				ll.prepend("1")
				expect(ll.at(2)).to eq "3"
			end
		end

		context "#pop" do
			it "returns nil if list is empty" do
				ll = LinkedList.new
				expect(ll.pop).to eq nil
			end

			it "removes the last element in the list" do
				ll = LinkedList.new
				ll.append("a")
				ll.append("b")
				ll.append("c")
				ll.pop
				expect(ll.tail).to eq "b"
			end
		end

		context "#contains?(item)" do
			it "returns false if the list is empty" do
				ll = LinkedList.new
				expect(ll.contains?("random")).to eq false
			end

			it "returns true if the item is in the list" do
				ll = LinkedList.new
				ll.append("malamute")
				ll.append("husky")
				ll.append("german shepherd")
				expect(ll.contains?("malamute")).to eq true
			end

			it "returns false if the item is not in the list" do
				ll = LinkedList.new
				ll.append("a")
				ll.append("b")
				ll.append("c")
				expect(ll.contains?("d")).to eq false
			end	
		end

		context "#find(data)" do
			it "returns nil if list is empty" do
				ll = LinkedList.new
				expect(ll.find("blue")).to eq nil
			end

			it "returns correct index if found" do
				ll = LinkedList.new
				ll.prepend("Mal")
				ll.prepend("Husky")
				ll.prepend("German Shep")
				expect(ll.find("Mal")).to eq 2
			end

			it "returns nil if data is not in the list" do
				ll = LinkedList.new
				ll.prepend("Boom")
				expect(ll.find("True")).to eq nil
			end
		end

		context "#to_s" do
			it "prints the lists" do
				ll = LinkedList.new
				ll.prepend("Mal")
				ll.prepend("Husky")
				ll.prepend("German Shep")
				expect(ll.to_s).to eq "( German Shep ) -> ( Husky ) -> ( Mal ) -> nil"
			end
		end


		context "#insert_at(data,index)" do
			it "returns nil if the list is empty" do
				ll = LinkedList.new
				expect(ll.insert_at("Mal",1)).to eq nil
			end

			it "inserts an item to the given index" do
				ll = LinkedList.new
				ll.prepend("Mal")
				ll.prepend("Husky")
				ll.insert_at("Shep",1)
				expect(ll.contains?("Shep")).to eq true
				ll.to_s
			end
		end

		context "#remove_at(index)" do

		end 
	end
end