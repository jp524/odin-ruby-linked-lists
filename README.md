# Odin Ruby Linked Lists

Built as part of [The Odin Project's Full Stack Ruby on Rails](https://www.theodinproject.com/paths/full-stack-ruby-on-rails?) curriculum: [Ruby course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby).

Provides an implementaiton of linked lists in Ruby. The following methods are supported:
* `#append(value)` adds a new node at end of the list
* `#prepend(value)` adds a new node at beginning of the list
* `#size` returns the total number of nodes in the list
* `#head` returns the first node in the list
* `#tail` returns the last node in the list
* `#at(index)` returns the node at the given index
* `#pop` removes the last element from the list
* `#contains?(value)` returns true if the passed in value is in the list and otherwise returns false
* `#find(value)` returns the index of the node containing value, or nil if not found
* `#to_s` prints the linked list