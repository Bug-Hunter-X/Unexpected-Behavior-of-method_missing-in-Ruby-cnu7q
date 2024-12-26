```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found."
    # Introduce a change to demonstrate different behavior.
    @value = -1 # Modify instance variable after method_missing
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
puts my_object.nonexistent_method # Output: Method 'nonexistent_method' not found.
puts my_object.value # Output: -1
```