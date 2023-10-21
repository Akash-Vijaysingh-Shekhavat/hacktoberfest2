/*Employees Earning More Than Their Managers
Write a solution to find the employees who earn more than their managers.
Return the result table in any order.
Link:https://leetcode.com/problems/employees-earning-more-than-their-managers/
The solution to problem is given solution 4 is the most optimizd solution queery of sql
 */
/* Solution 1 */
SELECT name AS Employee FROM Employee
WHERE Employee.Salary >(SELECT salary FROM
    Employee AS E2 WHERE Id = Employee.ManagerId);

/* Solution 2 */
SELECT e1.name AS Employee # Step 3 : Renaming the name as Employee
FROM Employee e1
         LEFT JOIN Employee e2    # Step 1: Using the left join
ON e1.managerId = e2.id
WHERE e1.salary >e2.salary  ;# Step 2: Checking condition
/* Solution 3 */
SELECT e1.name AS Employee # Step 3 : Renaming the name as Employee
FROM Employee e1
         INNER JOIN Employee e2    # Step 1: Using the left join
ON e1.managerId = e2.id
WHERE e1.salary >e2.salary  ;# Step 2: Checking condition

/* Solution 4 */
SELECT e1.name AS Employee # Step 3 : Renaming the name as Employee
FROM Employee e1
         INNER JOIN Employee e2    # Step 1: Using the left join
ON e1.managerId = e2.id
WHERE e1.salary >e2.salary  ;# Step 2: Checking condition