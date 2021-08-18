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

def apr_to_monthly_interest(apr)
  apr / 12
end

def calculate_monthly_payment(loan, int, term)
  loan * (int / (1 - (1 + int)**(-term)))
end

def years_to_months(term)
  term * 12
end

# Greet
prompt(welcome_message)
pause(rest_length)

# Ask for loan amount
loan_amount = ''
loop do
  prompt("What is your loan amount?")
  loan_amount = gets.chomp
  loan_amount = no_commas(loan_amount)

  # check for valid loan amount

  if valid_number?(loan_amount)
    loan_amount = convert_s_to_num(loan_amount)
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
term_years = ''
loop do
  prompt("What is your loan term in years?")
  term_years = gets.chomp

  # check for valid term
  if valid_number?(term_years)
    term_years = convert_s_to_num(term_years)
    break
  else
    prompt("Hmmm... that doesn't look quite right")
  end
end

# calculate/save monthly payment
term_months = years_to_months(term_years)
int_rate_months = apr_to_monthly_interest(int_rate)
monthly_payment = calculate_monthly_payment(loan_amount, int_rate_months, term_months)

# report monthly payment
prompt("Your monthly payment is $#{monthly_payment}.")
pause(rest_length)
prompt("Good luck paying off your mortgage!")

# Ask to run again

# Goodbye!
