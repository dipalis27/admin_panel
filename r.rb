class Example
  def public_method
    puts "This is a public method."
  end

  protected

  def protected_method
    puts "This is a protected method."
  end

  private

  def private_method
    puts "This is a private method."
  end
end

def Subclass <Example
    def call_protect_method
         protected_method
     end
end
p = Subclass.new
example= Example.new
p.call_protect_method