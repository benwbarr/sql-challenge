# **Employee Database: A Mystery in Two Parts**
> Pymaceuticals Matplotlib challenge

![alt text](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fblog.webhostpython.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fdatabase.jpg&f=1&nofb=1)

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s.




![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Depends.PNG)

### This was done in postgresql and Jupyter Notebooks. You will need to install and import the following

-PostgreSQL

-Jupyter Notebooks

-matplotlib.pyplot

-pandas 

-numpy 

-scipy.stats

-seaborn 

-sqlalchemy 

-statistics



![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Tasks.PNG)

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:


## Instructions


![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/dataE.PNG)


1. Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
  a. For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
  b. Be sure to create tables in the correct order to handle foreign keys.


![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table1.PNG) ![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table2.PNG) ![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table3.PNG)

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table4.PNG) ![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table5.PNG) ![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/table6.PNG)

2. Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors



![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/dataA.PNG)


Once you have a complete database, do the following:


1 .List the following details of each employee: employee number, last name, first name, sex, and salary.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query1.PNG)

2. List first name, last name, and hire date for employees who were hired in 1986.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query2.PNG)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query3.PNG)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query4.PNG)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query5.PNG)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query6.PNG)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query7.PNG)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Query8.PNG)

### Bonus (Optional) ###

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Bonus.PNG)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/SQLpanda.PNG)


2. Create a histogram to visualize the most common salary ranges for employees.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Hist.PNG)

3. Create a bar chart of average salary by title.

![alt text](https://github.com/benwbarr/sql-challenge/blob/main/Images/Bar.PNG)


## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.
