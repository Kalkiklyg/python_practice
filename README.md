# 🚀 Python + SQL Problem-Solving Practice  

This repository contains my daily problem-solving practice in **Python**, focused on strengthening logic building, coding skills, and clear communication with the computer.  

The goal: Develop **problem-solving skills** first, then refine coding ability to prepare for **Data Analyst → AI/ML roles** in product-based MNCs.  

--------------------------------------------------------------------------------------------------------------------------
--- Day 1 ---
### Python ###


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

--------------------------------------------------------------------------------------------------------------------------
### Day 2 ###

---PYTHON---
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

---- SQL ---


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
 ---Day 4 – Problem Solving---

 ###Python Problems###

 ---Find Duplicate Elements in a List---

a = [1, 2, 3, 2, 4, 5, 1]
seen = set()
duplicate = set()

for i in a:
    if i in seen:
        duplicate.add(i)
    else:
        seen.add(i)

print(list(duplicate))

---Merge two dictionaries. If a key exists in both, sum their values.---

def sum_dict():
    a = {'a': 1, 'b': 2}
    b = {'b': 3, 'c': 4}
    c = a.copy()
    for i, k in b.items():
        if i in c:
            c[i] += k
        else:
            c[i] = k
    return c

print(sum_dict())  # Output: {'a': 1, 'b': 5, 'c': 4}

---Count how many times each character occurs in a string.---
s = "hello world"
ds = {}

for i in s:
    if i in ds:
        ds[i] += 1
    else:
        ds[i] = 1

print(ds)  

### SQL Problems ###

---Employees with Salary > Average Salary of All Employees---

SELECT e.emp_id, e.dept_id, s.salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
WHERE s.salary > (SELECT AVG(salary) FROM slres);

---Find the 3rd Highest Salary (Without LIMIT)---

SELECT MAX(salary)
FROM slres
WHERE salary < (
    SELECT MAX(salary)
    FROM slres
    WHERE salary < (
        SELECT MAX(salary) FROM slres
    )
);

---Departments with Avg Salary > 65,000---

SELECT e.dept_id, AVG(s.salary) AS avg_salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
GROUP BY e.dept_id
HAVING AVG(s.salary) > 65000;

--------------------------------------------------------------------------------------------------------------------------
--- Day 5 ---

 ### Python ### 

# Write a program to check if two strings are anagrams of each other. #  

user = input("Enter first word: ")
ana = input("Enter second word: ")

# Normalize
user = user.replace(" ", "").lower()
ana = ana.replace(" ", "").lower()

# Sort and compare
if sorted(user) == sorted(ana):
    print("Anagram")
else:
    print("Not anagram")

### SQL ###

# For each employee, check if their salary is greater than the average salary of their department.#
SELECT e.emp_id, e.dept_id, s.salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
WHERE s.salary > (
    SELECT AVG(s2.salary)
    FROM slres s2
    JOIN emply e2 ON e2.emp_id = s2.emp_id
    WHERE e2.dept_id = e.dept_id
);
------------------------------------------------------------------------------------------------------------
# day6_python.py
# Day 6: Python problems
# 1) First non-repeating character in a string
# 2) Check if a list is a palindrome
# Includes small tests / example runs at the bottom.

def first_non_repeating(s: str):
    """
    Return the first non-repeating character in string s.
    If none found, returns None.
    Preserves original order.
    """
    if not s:
        return None

    # Optional normalization (uncomment if needed)
    # s = s.replace(" ", "").lower()

    counts = {}
    for ch in s:
        counts[ch] = counts.get(ch, 0) + 1

    for ch in s:
        if counts[ch] == 1:
            return ch
    return None


def is_list_palindrome(lst):
    """
    Return True if the list is a palindrome, False otherwise.
    Works for lists of numbers, strings, etc.
    """
    # direct and pythonic
    return lst == lst[::-1]


# -----------------------------
# Example runs / quick tests
# -----------------------------
if __name__ == "__main__":
    print("Day 6 Python tests")

    # Test 1: first non-repeating character
    tests = ["swiss", "hello", "aabb", ""]
    for t in tests:
        print(f"Input: {t!r} -> First non-repeating: {first_non_repeating(t)}")

    # Test 2: list palindrome
    lists = [
        [1, 2, 3, 2, 1],
        [1, 2, 3, 4],
        ["a", "b", "b", "a"],
        []
    ]
    for lst in lists:
        print(f"List: {lst} -> Palindrome: {is_list_palindrome(lst)}")

-- day6_sql.sql
-- Day 6: SQL queries
-- Tables assumed:
--   emply(emp_id, name, dept_id)
--   slres(emp_id, salary)

--------------------------------------------------------------------------------
-- Query 1A: Employees who earn the maximum salary in their department
-- Approach: correlated subquery (returns every employee who has salary = dept max)
--------------------------------------------------------------------------------
SELECT e.emp_id,
       e.name,
       e.dept_id,
       s.salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
WHERE s.salary = (
    SELECT MAX(s2.salary)
    FROM slres s2
    JOIN emply e2 ON e2.emp_id = s2.emp_id
    WHERE e2.dept_id = e.dept_id
);

--------------------------------------------------------------------------------
-- Query 1B: Same result using an aggregate (CTE) + JOIN — often clearer & efficient
--------------------------------------------------------------------------------
WITH dept_max AS (
    SELECT e.dept_id,
           MAX(s.salary) AS max_salary
    FROM emply e
    JOIN slres s ON e.emp_id = s.emp_id
    GROUP BY e.dept_id
)
SELECT e.emp_id,
       e.name,
       e.dept_id,
       s.salary
FROM emply e
JOIN slres s ON e.emp_id = s.emp_id
JOIN dept_max d ON e.dept_id = d.dept_id
                AND s.salary = d.max_salary;

--------------------------------------------------------------------------------
-- Query 2: Departments that have more than 3 employees
--------------------------------------------------------------------------------
SELECT dept_id,
       COUNT(emp_id) AS employee_count
FROM emply
GROUP BY dept_id
HAVING COUNT(emp_id) > 3;


# Day 6 — Problem Solving (Python + SQL)

## Python
### 1) First non-repeating character
- Approach: two-pass method (1) count frequencies using a dictionary, (2) iterate original string to keep order and return first with count 1.
- File: `Python/day6_python.py`
- Example: `"swiss"` -> `w`

### 2) Check if a list is palindrome
- Approach: compare list with its reversed version using slicing.
- Example: `[1,2,3,2,1]` -> `True`

## SQL
### 1) Employees with maximum salary per department
- Two approaches provided:
  - Correlated subquery (row-level comparison)
  - Aggregate (`WITH` / CTE) + JOIN (clearer for production)

### 2) Departments with more than 3 employees
- Use `GROUP BY dept_id` and `HAVING COUNT(*) > 3`

## Learnings / Notes
- Strengthen: correlated subqueries and CTE patterns — both are important in interviews.
- Python: practice dictionary patterns and list slicing to reduce small syntax slips.

