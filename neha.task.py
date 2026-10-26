name = "paython"
print(name.upper())


text = "PYTHON"

print(text.lower())



name = "python programming"

print(name.title())


text = "python"

print(text.capitalize())


text = "   Python   "

print(text.strip())



text = "I like Java"

print(text.replace("Java", "Python"))






data = "Python SQL PowerBI"

print(data.split())




skills = ["Python", "SQL", "PowerBI"]

print(" - ".join(skills))


text = "paython"
print(text.find ("h"))



text = "paython programmimg"
print(text.count("m"))



text = "Python"

print(text.startswith("Py"))



text = "python"
print(text.endswith("on"))



num = "12345"

print(num.isdigit())



name = "Python"

print(name.isalpha())



fruits = ["Apple", "Banana"]

fruits.append("Mango")

print(fruits)



numbers = [1,2]

numbers.extend([3,4,5])

print(numbers)



names = ["Rahul", "Amit"]

names.insert(1, "Chetan")

print(names)






fruits = ["Apple", "Banana"]

fruits.remove("Apple")

print(fruits)


numbers = [10,20,30]

numbers.pop(1)

print(numbers)



data = [1,2,3]

data.clear()

print(data)



names = ["A", "B", "C"]

print(names.index("B"))



numbers = [1,1,2,3,1]

print(numbers.count(1))




numbers = [5,2,8,1]

numbers.sort()

print(numbers)



numbers = [1,2,3]

numbers.reverse()

print(numbers)



a = [1,2,3]

b = a.copy()

print(b)


data = (1,1,2,3)

print(data.count(1))

print(data.index(2))




numbers = {1,2,3}

numbers.add(4)

print(numbers)


numbers.update([5,6])

print(numbers)



numbers = {1,2,3,10}
numbers.remove(10)

numbers.discard(10)


a = {1,2}
b = {2,3}

print(a.union(b))



print(a.intersection(b))



student = {
    "name": "Rahul",
    "age": 21
}

print(student.keys())


print(student.values())


print(student.get("marks"))



student.update({"city":"Ahmedabad"})

print(student)


student.pop("age")

print(student)



employee = {
    "name": "Chetan",
    "skills": ["Python", "SQL"],
    "salary": 35000
}

employee["skills"].append("Power BI")

print(employee)
