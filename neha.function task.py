def calculate_revenue(quantity, unit_price):
    """Calculate gross sales revenue."""
    return quantity * unit_price


def calculate_discount(revenue, discount_percent):
    """Calculate the discount amount."""
    return revenue * discount_percent / 100


def calculate_net_revenue(revenue, discount):
    """Calculate revenue after discount."""
    return revenue - discount


def evaluate_sales(net_revenue):
    """Classify a transaction by net revenue."""
    if net_revenue >= 10000:
        return "High Value"
    elif net_revenue >= 5000:
        return "Medium Value"
    else:
        return "Low Value"


# Transaction details
product = "Laptop"
quantity = 3
unit_price = 45000
discount_percent = 10

# Calculations
gross_revenue = calculate_revenue(quantity, unit_price)
discount = calculate_discount(gross_revenue, discount_percent)
net_revenue = calculate_net_revenue(gross_revenue, discount)
category = evaluate_sales(net_revenue)

# Report
print("Product:", product)
print("Gross Revenue:", gross_revenue)
print("Discount:", discount)
print("Net Revenue:", net_revenue)
print("Sales Category:", category)


def greet():
    print("Welcome to Python for Data Analytics!")

greet()


def display_welcome():
    print("welcome to data analysis course")

    display_welcome()
    display_welcome()


def calculate(a,b):
    sum_result = a+b
    difference = a-b
    product = a-b
    if b!=0:
        quotient = a/b
    else:   
        quotient = "cannot divide by zero"
    return sum_result,difference,product,quotient


result = calculate(10,5)
print(result)

def calculate_revenue(quantity,price):
    return quantity * price

revenue = calculate_revenue(10,500)
tax = revenue * 0.18
final_amount = revenue + tax


print("Revenue:",revenue)
print("Tax:",tax)
print("Final amount:",final_amount)


def final_salary(salary,bonus_percentage):
    bonus = salary * bonus_percentage / 100
    total_salary = salary + bonus
    return total_salary

result = final_salary(30000,10)
print(result)

