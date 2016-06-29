class PhoneNumber

def initialize(number)
	@number = number.to_s
end
def number
	if @number[/[a-zA-Z]/]
		number = "0"*@number.scan(/\d/).count
	else	
		number = @number.gsub(/\D/,"").to_i
	end
	   number.to_i
end

end