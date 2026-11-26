print("hello")

import numpy as np

salary = np.array([20000, 30000,40000])

print(salary * 1.10)


import numpy as np

marks = np.array([70, 80, 90, 60,85])

print(marks.sum())
print(marks.mean())
print(marks.max())
print(marks.min())


import numpy as np

salary = np.array([20000, 25000, 30000, 35000, 40000])

print(salary.sum())
print(salary.mean())
print(salary.max())

import numpy as np

salary = np.array([20000, 25000, 30000, 35000, 40000])

print(salary[0])
print(salary[1])
print(salary[4])

marks = np.array([55, 65, 75, 85, 95])

print(marks[2:5])

employee_data = np.array([
    [101, 25000],
    [102, 30000],
    [103, 35000]
])

print(employee_data)


sales = np.array([10000,15000,20000,25000])

print(sales[0])
print(sales[2])
print(sales[-1])


arr = np.array([10,20,30,40,50])

print(arr[1:4])
print(arr[0:5:2])

employee = np.array([
    [101,25000],
    [102,30000],
    [103,35000]
])


import numpy as np
arr = np.array([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21])
print(arr)


import numpy as np

data = np.array([
    [101, 30000],
    [102, 35000],
    [103, 40000],
    [104, 45000]
])

print(data)


print(data.dtype)

arr = np.array([10, 20, 30, 40])
print(arr.dtype)

arr = np.array([10.5, 20.5, 30.5])
print(arr.dtype)

import numpy as np

arr = np.array([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21])
print(arr[:5])


salary = np.random.randint(20000, 60000,5)
print(salary)

data = np.array([
    [101, 30000],
    [102, 35000],
    [103, 40000],
    [104, 45000]

])
print(data[:, 1])

import numpy as np

zero_matrix = np.zeros((3, 3))
print(zero_matrix)

ones_matrix = np.ones((3, 3))
print(ones_matrix)

ones_matrix = np.ones((2, 4))
print(ones_matrix)

even = np.arange(2, 101, 2)
print(even)


import numpy as np

arr = np.array([1,2,3,4,5,6])

new_arr = arr.reshape(2,3)

print(new_arr)

arr = np.arange(12)

print(arr.reshape(3,-1))


sales = np.arange(12)

print(sales.reshape(4,3))


arr = np.array([
    [1,2,3],
    [4,5,6]
])

print(arr.flatten())


sales = np.array([10000,15000,20000])

print(sales + 5000)
print(sales - 2000)
print(sales * 2)
print(sales / 2)

salary = np.array([25000,30000,35000])
bonus = np.array([2000,3000,4000])

print(salary + bonus)


sales = np.array([1000,2000,3000])

print(sales.sum())
print(sales.mean())
print(sales.min())
print(sales.max())


marks = np.array([60,70,80,90])

print(np.mean(marks))
print(np.median(marks))
print(np.percentile(marks,50))

sales = np.array([10,20,30,40])
marketing = np.array([2,4,6,8])

print(np.corrcoef(sales,marketing))



salary = np.array([20000,35000,50000,70000])

print(salary > 40000)


sales = np.array([12000,18000,25000,9000])

print(sales[sales > 15000])


salary = np.array([20000,30000,40000,50000,60000])

print(salary[(salary > 25000) & (salary < 55000)])
print(salary[(salary < 25000) | (salary > 55000)])


arr = np.array([10,20,np.nan,40])

print(arr)
print(np.isnan(arr))

arr = np.array([50,20,90,10])

print(np.sort(arr))
print(np.sort(arr)[::-1])


department = np.array([
    'HR','IT','IT','Finance','HR'
])

print(np.unique(department))


salary = np.array([
    25000,
    35000,
    45000,
    np.nan,
    55000,
    65000
])


print(np.nanmean(salary))
print(np.nanmax(salary))
print(salary[salary > 40000])
print(np.sort(salary))


import numpy as np

arr = np.arange(1, 21)
result = arr.reshape(4, 5)
print(result)

import numpy as np
arr = np.array([10, 20, 30, 40, 50, 60, 70, 80, 90, 100])

print(np.sum(arr))
print(np.mean(arr))
print(np.max(arr))
print(np.min(arr))
print(np.std(arr))
filtered = arr[arr > 50]
print(filtered)
sorted_arr = np.sort(arr)
print(sorted_arr)


import numpy as np
salary = np.array([25000, 35000, 45000, np.nan, 55000, 60000, np.nan, 40000])
print(salary)
print(np.nanmean(salary))
filtered_salary = salary[(salary >= 30000) & (salary <= 50000)]
print(filtered_salary)


dept = np.array(['hr', 'it', 'finance', 'hr', 'it', 'finance'])
unique_dept = np.unique(dept)
print(unique_dept)

import numpy as np
salary = np.array([20000, 30000, 40000, 50000, 60000])
print(np.percentile(salary,50))