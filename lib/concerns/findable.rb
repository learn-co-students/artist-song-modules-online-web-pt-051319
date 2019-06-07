module Findable
   def find_by_name(name)
     #this works thanks to the all instance method that exposes the variable that collects all instances. 
    self.all.detect {|a| a.name == name}
  end
  
  
end 