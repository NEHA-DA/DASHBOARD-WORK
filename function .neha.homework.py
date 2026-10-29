sales = [1200, 2500, 1800, 3200, 1500]

print(len(sales))  
print(sum(sales))  
print(max(sales))  
print(min(sales))  



def greet():
    print("Welcome to Python for Data Analytics!")

greet()


def show_message():
    print("Data analysis started.")

show_message()
show_message()
show_message()


def greet_student(name):
    print("Welcome,", name)

greet_student("Amit")
greet_student("Priya")
greet_student("Rahul")


def calculate_revenue(quantity, price):
    print("Total Revenue:", quantity * price)

calculate_revenue(10, 500)
calculate_revenue(20, 750)
calculate_revenue(5, 1200)



def calculate_total(a, b):
    print(a + b)

result = calculate_total(10, 20)

print(result)



def calculate_total(a, b):
    return a + b

result = calculate_total(10, 20)

print(result)


def calculate_revenue(quantity, price):
    return quantity * price

revenue = calculate_revenue(10, 500)
tax = revenue * 0.18
final_amount = revenue + tax

print("Revenue:", revenue)
print("Tax:", tax)
print("Final Amount:", final_amount)


def employee_details(name, department):
    print("Name:", name)
    print("Department:", department)

employee_details("Amit", "Analytics")




def calculate_discount(price, discount=10):
    return price * discount / 100

print(calculate_discount(1000))
print(calculate_discount(1000, 20))






def analyze_sales(sales):
    total = sum(sales)
    average = total / len(sales)
    highest = max(sales)
    lowest = min(sales)

    return total, average, highest, lowest

sales = [1200, 2500, 1800, 3200, 1500]

total, average, highest, lowest = analyze_sales(sales)

print("Total Sales:", total)
print("Average Sales:", average)
print("Highest Sale:", highest)
print("Lowest Sale:", lowest)



def evaluate_performance(score):
    if score >= 90:
        return "Excellent"
    elif score >= 75:
        return "Good"
    elif score >= 50:
        return "Average"
    else:
        return "Needs Improvement"

print(evaluate_performance(95))
print(evaluate_performance(80))
print(evaluate_performance(60))
print(evaluate_performance(35))



def calculate_total(*numbers):
    return sum(numbers)

print(calculate_total(10, 20))
print(calculate_total(10, 20, 30, 40))
print(calculate_total(100, 200, 300, 400, 500))




def display_employee(**details):
    for key, value in details.items():
        print(key, ":", value)

display_employee(
    name="Amit",
    department="Analytics",
    salary=50000
)



company_name = "ABC Technologies"

def display_company():
    print(company_name)

display_company()


def calculate_profit(revenue, expenses):
    """Calculate profit by subtracting expenses from revenue."""
    return revenue - expenses

profit = calculate_profit(100000, 65000)

print(profit)
print(calculate_profit.__doc__)




def display_welcome():
    print("welcome to the data analysis course")

display_welcome()    


def calculator(a, b):
    total = a + b
    difference = a - b
    product = a * b

    if b != 0:
        quotient = a / b
    else:
        quotient = "Cannot divide by zero"

    return total, difference, product, quotient


result = calculator(10, 5)

print("Sum:", result[0])
print("Difference:", result[1])
print("Product:", result[2])
print("Quotient:", result[3])





def calculate_salary (basic_salary, bonus_percentage):
    bonus = basic_salary * bonus_percentage / 100
    final_salary = basic_salary + bonus
    return final_salary

result = calculate_salary(30000,10)

print("final salary:", result)




def sales_metrics(daily_sales):
    total = sum(daily_sales)
    average = total / len (daily_sales)
    highest = max(daily_sales)
    lowest = min(daily_sales)

    return total, average, highest, lowest


daily_sales = [10000, 15000, 20000, 18000, 25000]

result = sales_metrics(daily_sales)

print("total sales:", result[0])
print("average sales:", result[1])
print("highest sales:", result[2])
print("lowest sales:", result[3])




def student_grade(marks):
    if marks >= 90:
        return "A"
    elif marks >= 75:
        return "B"
    elif marks >= 60:
        return "C"
    elif marks >= 35:
        return "D"
    else:
        return "Fail"


print("Marks: 95, Grade:", student_grade(95))
print("Marks: 80, Grade:", student_grade(80))
print("Marks: 65, Grade:", student_grade(65))
print("Marks: 40, Grade:", student_grade(40))
print("Marks: 25, Grade:", student_grade(25))  



def discount_calculator(price, discount_percentage):
    discount = price * discount_percentage / 100
    final_price = price - discount

    return discount, final_price


result = discount_calculator(2000, 10)

print("Discount Amount:", result[0])
print("Final Price:", result[1])



def count_transactions(transactions):
    count = 0

    for amount in transactions:
        if amount >= 5000:
            count += 1

    return count


transactions = [2000, 5000, 7500, 3000, 10000, 4500]

result = count_transactions(transactions)

print("Transactions >= 5000:", result)



def total_revenue(orders):
    return sum(orders)


def average_order_value(orders):
    return sum(orders) / len(orders)


def number_of_orders(orders):
    return len(orders)

orders = [1000, 2000, 3000, 4000]


print("total revenue:", total_revenue(orders))
print("average order value:", average_order_value(orders))
print("number of orders:", number_of_orders(orders))



def total_salary(salaries):
    return sum(salaries)

salaries = [10000, 20000, 30000]

print(total_salary(salaries))


def average_salary(salaries):
    return sum(salaries) / len(salaries)

salaries = [10000, 20000, 30000]

print(average_salary(salaries))


def salary_range(salaries):
    highest = max(salaries)
    lowest = min(salaries)

    print("Highest Salary:", highest)
    print("Lowest Salary:", lowest)


salaries = [10000, 20000, 30000]

salary_range(salaries)



def count_high_salary(salaries, limit):
    count = 0

    for salary in salaries:
        if salary > limit:
                count += 1

        return count

    salaries = [10000, 20000, 30000, 40000, 50000]

    print(count_high_salary(salaries, 30000))    
                
                             
                             
                        

def count_high_salary(salaries, limit):
    count = 0

    for salary in salaries:
        if salary > limit:
            count += 1

    return count


salaries = [10000, 20000, 30000, 40000, 50000]

print(count_high_salary(salaries, 30000))


def sales_increase(previous_sales, current_sales):
    increase = current_sales - previous_sales
    percentage = (increase / previous_sales) * 100

    return percentage

previous_sales = 100000
current_sales = 125000

print(sales_increase(previous_sales, current_sales))



def sales_performance(current_sales, target):
    if current_sales > target:
        return "Target Exceeded"
    elif current_sales == target:
        return "Target Achieved"
    else:
        return "Target Not Achieved"


current_sales = 125000
target = 100000

print(sales_performance(current_sales, target))




def summary_report(salaries, previous_sales, current_sales, target):

    total = sum(salaries)
    average = sum(salaries) / len(salaries)
    highest = max(salaries)
    lowest = min(salaries)

    increase = ((current_sales - previous_sales) / previous_sales) * 100

    if current_sales > target:
        performance = "Target Exceeded"
    elif current_sales == target:
        performance = "Target Achieved"
    else:
        performance = "Target Not Achieved"

    print("Total Salary:", total)
    print("Average Salary:", average)
    print("Highest Salary:", highest)
    print("Lowest Salary:", lowest)
    print("Sales Increase:", increase, "%")
    print("Sales Performance:", performance)


salaries = [10000, 20000, 30000]
previous_sales = 100000
current_sales = 125000
target = 120000

summary_report(salaries, previous_sales, current_sales, target)


                                   
                  