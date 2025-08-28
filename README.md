# 🚀 Python Problem-Solving Practice  

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

