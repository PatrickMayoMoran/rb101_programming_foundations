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


# Greet
# Ask for loan amount
# check for valid loan amount
# Ask for interest rate
# check for valid interest rate
# ask for term
# check for valid term
# calculate/save monthly payment
# report monthly payment
# Ask to run again
# Goodbye!