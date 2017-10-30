class Superclass 

	def method_missing(method_name, *arguments, &block)
	    @@screens ||= Hash.new
	    class_name = method_name.to_s.split('_').join.capitalize
	    @@screens[method_name] ||= Object.const_get("#{class_name}").new
    
 	end

end