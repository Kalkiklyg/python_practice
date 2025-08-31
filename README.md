# 🚀 Python + SQL Problem-Solving Practice  

This repository contains my daily problem-solving practice in **Python**, focused on strengthening logic building, coding skills, and clear communication with the computer.  

The goal: Develop **problem-solving skills** first, then refine coding ability to prepare for **Data Analyst → AI/ML roles** in product-based MNCs.  

---

**Code:**
```python
def second_largest(nums):
    unique_nums = list(set(nums))  # remove duplicates
    unique_nums.sort(reverse=True)  # sort descending
    return unique_nums[1]

print(second_largest([12, 45, 78, 45, 12, 90, 34]))

from collections import Counter

text = 'Pen apple pineapple pen apple pine apple'
words = text.lower().split()
word_count = Counter(words)

print(word_count)

def factorial(n):
    result = 1
    for i in range(1, n+1):
        result *= i
    return result

print(factorial(5))   # 120

def is_palindrome(s):
    s = s.lower().replace(" ", "")  
    return s == s[::-1]

print(is_palindrome("madam"))   # True
print(is_palindrome("hello"))   # False

def unique_elements(lst):
    return list(set(lst))

print(unique_elements([1, 2, 2, 3, 4, 4, 5]))

-- Day 1 SQL Practice --

-- 1. Select all employees from department 101
SELECT * 
FROM employees
WHERE dept_id = 101;

-- 2. List employees with salary >= 60000
SELECT e.name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.salary >= 60000;

-- 3. View salaries in descending order
SELECT *
FROM salaries
ORDER BY salary DESC;

Day 2 – Problem Solving (Python + SQL)
# slicing
given_string = "example"
rev_0 = given_string[::-1]
print("Reversed string using slicing method:", rev_0)

# join + reversed
rev_1 = "".join(reversed(given_string))
print("Reversed string using join + reversed method:", rev_1)

# for loop
rev_2 = ""
for char in given_string:
    rev_2 = char + rev_2
print("Reversed string using loop:", rev_2)

l = [8, 2, 4, 5, 3, 7, 1]
n = len(l) + 1
Total_expected = n * (n + 1) / 2
Total_actual = sum(l)
missing_number = Total_expected - Total_actual
print("The missing number from the list is:", missing_number)

digi = 112
d = 0
for i in str(digi):
    d += int(i)
print("Sum of digits:", d)

SELECT e.emp_id, AVG(s.salary)
FROM employees e 
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY e.emp_id
HAVING AVG(s.salary) >= (SELECT AVG(salary) FROM salaries);

SELECT emp_id, dept_id
FROM employees
WHERE dept_id IS NULL;

SELECT emp_id, salary
FROM salaries
ORDER BY salary DESC
LIMIT 3;
-------------------------------------------------------------------------------------
#_DAY 3_#

##PYTHON##

---Check if a number is an Armstrong number.---  

num = int(input("Enter a number: "))
str_n = str(num)
order = len(str_n)
sop = 0
for digit in str_n:
    sop += int(digit) ** order

if sop == num:
    print(num, "is an Armstrong number.")
else:
    print(num, "is not an Armstrong number.")

---Check if a number is prime.---

num = int(input("Enter a number: "))
is_prime = True
for i in range(2, num):
    if num % i == 0:
        is_prime = False
        break

if is_prime and num > 1:
    print(num, "is a prime number.")
else:
    print(num, "is not a prime number.")

---Find the longest word in a given string.---

s = input("Enter a sentence: ")
words = s.split()
h = ""
for i in words:
    if len(i) > len(h):
        h = i
print("Longest word is:", h)

###SQL Queries###

---Employees with salary above average in their department---

SELECT e.name, e.dept_id, s.salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
WHERE s.salary > (
    SELECT AVG(s2.salary)
    FROM slres s2
    WHERE s2.dept_id = e.dept_id
);

---Second Highest Salary (without LIMIT)---
SELECT MAX(salary) 
FROM slres
WHERE salary < (SELECT MAX(salary) FROM slres);

---Count Employees per Department---
SELECT dept_id, COUNT(*) AS employee_count
FROM emply
GROUP BY dept_id;

----------------------------------------------------------------------------------------------------------------
