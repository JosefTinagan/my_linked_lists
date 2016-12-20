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

		def prepend(item)
			if head == nil
				@head = Node.new(item,nil)
			else
				@head = Node.new(item, head)
			end
		end

		def size
			return 0 if head == nil
			tmp = head
			i = 1
			while tmp.next_node != nil
				tmp = tmp.next_node
				i += 1
			end
			return i
		end

		def first
			return nil if head == nil
			head.value
		end

		def tail
			return nil if head == nil
			tmp = head
			while tmp.next_node != nil
				tmp = tmp.next_node
			end
			return tmp.value
		end
	end
end