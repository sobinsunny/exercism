class PhoneNumber

def initialize(number)
	@number = number.to_s
end
def number
	if @number[/[a-zA-Z]/]
		number = "0"*@number.scan(/\w/).count
	elsif @number.size < 10
		number = "0"*10
	elsif @number[/\d*/].size > 10
		@number[0]=''  if @number[0]=='1'
		return "0"*10  if @number.size>10
		number = @number
	else	
		number = @number.gsub(/\D/,"")
	end
	   number
end

end