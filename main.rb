=begin
  Names: CUSTER, Mark John T. DE RAMOS, Ghrazielle Rei A. LARRAQUEL, Reign Elaiza D. TAN, Jose Tristan T.
  Language: Ruby
  Paradigm: Procedural
=end

puts "Input the monthly salary in pesos."
salary = gets.chomp.to_f

sss = 135
temp = (salary - 3249.99)/500
temp = [temp.ceil(), 44].min
sss += temp*22.5

if salary <= 1500
  pagibig = 0.01*salary
elsif salary <= 5000
  pagibig = 0.02*salary
else
  pagibig = 100
end

if salary <= 10000
  philhealth = 200.0
elsif salary < 80000
  philhealth = salary*0.02
else
  philhealth = 1600.0
end

deductions = sss + pagibig + philhealth
taxable = salary - deductions

if taxable < 20833
  tax = 0
elsif taxable < 33333
  tax = 0.2*(taxable - 20833)
elsif taxable < 66667
  tax = 2500 + 0.25*(taxable - 33333)
elsif taxable < 166667
  tax = 10833.33 + 0.3*(taxable - 66667)
elsif taxable < 666667
  tax = 40833.33 + 0.32*(taxable - 166667)
else
  tax = 200833.33 + 0.35*(taxable - 666667)
end
tax = tax.round(2)

net = taxable - tax

puts "Monthly Income: #{salary}"
puts "SSS Contribution: #{sss}"
puts "PhilHealth Contribution: #{philhealth}"
puts "Pag-Ibig Contribution: #{pagibig}"
puts "Total Deductions: #{deductions}"
puts "Taxable Income: #{taxable}"
puts "Tax: #{tax}"
puts "Net Income: #{net}"
