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

		def at(index)
			return nil if head == nil
			i = 0
			tmp = head
			while i != index
				tmp = tmp.next_node
				i += 1
			end
			return tmp.value
		end

		def pop
			return nil if head == nil
			cur = head
			prev = nil
			while cur.next_node != nil
				prev = cur
				cur = cur.next_node
			end
			cur.value = nil
			cur.next_node = nil
			prev.next_node = nil
		end

		def contains?(data)
			puts "List is empty" if head == nil
			return false if head == nil
			tmp = head
			flag = false
			while tmp.next_node != nil
				if tmp.value == data
					flag = true
				end
				tmp = tmp.next_node
			end
			return flag
		end

		def find(data)
			return nil if head == nil
			tmp = head
			i = 0
			while tmp != nil
				if tmp.value == data
					return i
				end
				tmp = tmp.next_node
				i += 1
			end
			return nil
		end

		def to_s
			tmp = head
			str = ''
			while tmp != nil
				str << "( #{tmp.value} ) -> "
				tmp = tmp.next_node
			end
			str << "nil"
			print str
			return str
		end
	end
end