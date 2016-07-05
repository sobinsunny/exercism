class PhoneNumber
  def initialize(number)
    @number = number.to_s
  end

  def number
    if @number.size < 10
      number = '0' * 10
    elsif @number[/\d*/].size > 10
      @number[0] = ''  if @number[0] == '1'
      return '0' * 10  if @number.size > 10
      number = @number
    elsif @number[/[a-zA-Z]/]
      number = '0' * 10
    else
      number = @number.gsub(/\D/, '')
    end
    number
  end

  def area_code
    number.chars.first(3).join('')
  end
end
