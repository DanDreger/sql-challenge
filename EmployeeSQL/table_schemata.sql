-- Create departments table
CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

-- Create departments employees table
CREATE TABLE "dept_emp" (
	"emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

-- Create department managers table
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

-- Create employees table
CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR  NOT NULL,
	"sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Create salaries table
CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
	PRIMARY KEY (emp_no, salary)
);

-- Create titles table
CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- make department number a foreign key for dept emp
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

-- make employee number a foreign key for dept emp
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- make dep no a foreign key for dept manager
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

-- make emp no a foreign key for dept manager
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- make title id a foreign key for employees
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_title_id_" FOREIGN KEY("title_id")
REFERENCES "titles" ("title_id");

-- make emp no a foreign key for dept salaries
ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
