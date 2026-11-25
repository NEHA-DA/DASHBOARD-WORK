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