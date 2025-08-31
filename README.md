# 🚀 Python + SQL Problem-Solving Practice  

This repository contains my daily problem-solving practice in **Python**, focused on strengthening logic building, coding skills, and clear communication with the computer.  

The goal: Develop **problem-solving skills** first, then refine coding ability to prepare for **Data Analyst → AI/ML roles** in product-based MNCs.  

---

## 📌 Day 1 – Problem Statements  

### 1️⃣ Find the 2nd Largest Number in a List  
**Problem:** Write a function that takes a list of numbers and returns the 2nd largest number.  

**Key Learning:**  
- Think logically first → Sort list, remove duplicates, pick the second last.  
- Use Python’s built-in tools like `set()`, `sort()`.  
- Communicating logic to Python is as important as solving it.  

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

Learnings from Day 2

Practiced multiple methods to solve the same Python problem.

Understood formula-driven logic for missing numbers.

Strengthened loop and string handling.
