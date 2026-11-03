for i in range(1, 6):
    print(i)

for i in range(1,51):
    print(i)    

for i in range(1,101):
    if i % 2 == 0:
        print(i)




total = 0

for i in range(1, 101):
    total = total + i
print("Total:", total)

sales = [10000, 20000, 15000, 25000, 30000]

total = 0

for i in sales:
    total = total + i

average = total / len(sales)

print("total sales:", total)
print("average sales:", average)

sales = [25000, 60000, 75000, 30000, 90000, 45000]

count = 0

for i in sales:
    if i > 50000:
        count = count + 1
print("total sales above 50000:",count)

sales = [25000, 60000, 75000, 30000, 90000,45000]

highest = sales[0]

for i in sales:
    if i > highest:
        highest = i
print("highest sales:", highest) 

sales = [25000, 60000, 75000, 30000, 90000,45000]

lowest = sales[0]

for i in sales:
    if i < lowest:
        lowest = i

print("lowest sales:", lowest)

transactions = [1000, -500, 2000, -300,-700, 4000]

count = 0

for i in transactions:
    if i < 0:
        count = count + 1

print("negative transactions:", count) 


sales = [50000, 70000, 90000]
cost = [30000, 40000, 50000]

for i in range(len(sales)):
    profit  = sales[i] - cost[i]
    print("product profit:", profit)


marks = [25, 45, 60, 30, 80, 55, 20, 90] 

count = 0

for i in marks:
    if i >= 35:
        count = count + 1

print("total students passed:", count) 

customers = ["rahul", "", "priya", "amit", "", "neha"]

for name in customers:
    if name == "":
        continue
    print(name)

i = 10

while i >= 1:
    print(i)
    i = i - 1


sales = [25000, 50000, 75000, 120000, 90000, 150000]  

for i in sales:
    if i > 100000:
        break
    print(i)


quantities = [10, 20, 15, 5] 
prices = [100, 200, 300, 500]   

total_revenue = 0

for i in range(len(quantities)):
    revenue = quantities[i]  * prices[i]
    total_revenue = total_revenue + revenue

print("total revenue:", total_revenue)   



 
    


               
         
