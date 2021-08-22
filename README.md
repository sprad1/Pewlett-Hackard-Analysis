# Pewlett-Hackard-Analysis

### Overview:

  The purpose of the project was to determine the number of retiring employees by their title and to identify which employees are eligible for the mentorship program. The number of retiring employees by their title was filtered by those who were born between January 1, 1952 to December 31, 1955. Query was created by retrieving emp_no, first_name, and last_name columns from the employees table and the title, from_date, and to_date columns from the titles table and the two tables were joined on the primary key and entered into a new table called retirement_titles which was then exported as retirement_titles.csv into the Data folder. Identifying which employees are eligible for the mentorship program was filtered by those who were born between january 1, 1965 and December 31, 1965. Another query was written by using DISTINCT ON statemnt to retrieve emp_no, first_name, last_name, and birth_date columns from the employees table and from_date and to_date columns from the dept_emp table, and title column from the titles table. The three tables were joined and entered into a new table called mentorship_eligibility which was then exported as mentorship_eligibility.csv into the data folder. 

### Results: 

  * From the image of the retirement_titles table below, we are able to see all of the employees who are eligible for retirement as well as how long the worked and all the titles they worked as.
 
 ![Screen Shot 2021-08-20 at 6 27 34 PM](https://user-images.githubusercontent.com/86751774/130302370-41330c99-8a22-48bb-ab56-752249cf4098.png)

* From the unique_titles table, we are able to the employees who are eligible for retirement and their most recent title.

![Screen Shot 2021-08-20 at 6 31 35 PM](https://user-images.githubusercontent.com/86751774/130302556-b9abe131-b2d8-4da4-bef1-4c2644debef9.png)

* From the retiring_titles table, we are able to see that majority of those employees who are eligible for retirement currently have a senior title

![Screen Shot 2021-08-20 at 6 32 08 PM](https://user-images.githubusercontent.com/86751774/130302572-9ee780c1-ec3e-4a68-b816-2392f496aa33.png)

* From the mentorship_eligibility table, we are able to see that employees who are eligible for the mentorship program currently hold a senior title 

![Screen Shot 2021-08-20 at 6 32 46 PM](https://user-images.githubusercontent.com/86751774/130302600-0d4a4379-7e59-461e-afe2-d7e4692241af.png)


### Summary:

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  As the "silver tsunami" begins to make an impact, total of 90,398 roles will need to be filled. 
  
#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  No, there are only 1,940 qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.
