# Let's figure out a mortgage calculator!
# Collect from user:
# --current balance
# --APR
# --remaining term
# ----years
#
# From above, I will calculate:
# --monthly interest rate (APR / 12)
# --loan duration in months ( term * 12)
# --monthly payment (formula below)
#
# formula:
# -- mortgage_payment = 
# loan_amount * (monthly_interest / 
#         (1 - (1 + monthly interest)**(-term)))
# 
# Helper functions needed:
# --prompt
# --pause for effect
# --validate numerical input
# --convert yearly term to months
# --calculate monthly interest rate
# --calculate monthly payments
# --convert interest rate to percentage
# --report results
require "pry"

welcome_message = <<-MSG
Welcome to the mortgage calculator!
We will take your mortgage amount, term in years, and interest rate.
Then, we'll provide your monthly payment.
Here we go!
MSG

interest_message = <<-MSG
Please enter your interest rate.
Please enter it as 0.##
5% would be 0.05
6.75% would be 0.0675
10% would be 0.10
MSG
rest_length = 1

def prompt(message)
  Kernel.puts("=> #{message}")
end

def pause(rest_length)
  sleep(rest_length)
end

def no_commas(amt)
  amt.delete(",")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def convert_s_to_num(num)
  if num.to_f.to_s == num
    num.to_f
  else
    num.to_i
  end
end

# Greet
prompt(welcome_message)
pause(rest_length)

# Ask for loan amount
amt = ''
loop do
  prompt("What is your loan amount?")
  amt = gets.chomp
  amt = no_commas(amt)

#check for valid loan amount

  if valid_number?(amt)
    amt = convert_s_to_num(amt)
    break
  else
    prompt("Hmmm... that doesn't look quite right")
  end
end


# Ask for interest rate
int_rate = ''
loop do
  prompt(interest_message)
  pause(rest_length)
  prompt("What is your interest rate?")
  int_rate = gets.chomp

# check for valid interest rate
  if valid_number?(int_rate)
    int_rate = convert_s_to_num(int_rate)
    break
  else
    prompt("Hmmm... that doesn't look quite right")
  end
end

# ask for term
# check for valid term
# calculate/save monthly payment
# report monthly payment
# Ask to run again
# Goodbye!