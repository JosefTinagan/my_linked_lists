module MyLinkedLists
	class LinkedList
		attr_accessor :head, :tail
		def initialize
			@head = nil
		end

		def append(item)
			if head == nil
				@head = Node.new(item)
			else
				tmp = head
				while tmp.next_node != nil
					tmp = tmp.next_node
				end
				tmp.next_node = Node.new(item,nil)
			end
		end
	end
end