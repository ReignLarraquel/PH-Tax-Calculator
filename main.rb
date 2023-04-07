puts "Input the monthly salary in pesos."
salary = gets.chomp.to_f

sss = 135
temp = (salary - 3249.99)/500
temp = [temp.ceil(), 44].min
sss += temp*22.5

if salary <= 1500
  pagibig = 0.01*salary
else
  pagibig = 0.02*salary
end

if salary <= 10000
  philhealth = 400.0
elsif salary < 80000
  philhealth = salary*0.04
else
  philhealth = 3200.0
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