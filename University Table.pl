student(982298, 1, 'John', 'Snow', '16/11/81', 3.94).
student(989738, 2, 'Daenerys', 'Targaryen', '25/06/81', 3.23).
student(989765, 3, 'Petyr', 'Baelish', '20/07/81', 1.5).

department(1, 'Computer Eng.', 'Sandor', 'Clegane', 1111).
department(2, 'Electrical Eng.', 'Stannis', 'Baratheon', 1112).
department(3, 'Chemistry Eng.', "Samwell", 'Tarly', 1113).

staff(1111, 'Assoc. Prof.', 'Software Engineering', 85000).
staff(1112, 'Assist. Prof.', 'Microprocessors', 65000).
staff(1113, 'Dr.', 'Organic Chemistry', 45000).

succesfullsalary(Salary):- student(_, Dept, _, _, _, CGPA), CGPA > 3.5, department(Dept, _, _, _, StaffNo), staff(StaffNo, _, _, Salary).
assocprof(DeptName, Name, Surname) :- staff(StaffNo, 'Assoc. Prof.', _, _), department(Dept, DeptName, _, _, StaffNo), student(_, Dept, Name, Surname, _, _).