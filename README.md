# Hospital Database Management System

## Project Overview

This project implements a comprehensive MySQL database system for managing hospital operations, including doctors, patients, hospitals, and prescriptions. The database supports various healthcare management functionalities through optimized SQL queries.

### Database Structure

### Tables
- **Hospitals** (40 records): Hospital details including name, address, bed capacity, type, and accreditation status
- **Doctors** (100 records): Medical professionals with personal details and hospital assignments
- **Patients** (600 records): Patient records with personal details and assigned doctors
- **Prescriptions** (500 records): Medication prescriptions linking patients and doctors

### Relationships
-	One Hospital → Many Doctors

-	One Doctor → Many Patients

-	One Doctor → Many Prescriptions

-	One Patient → Many Prescriptions

### Files in Repository

**Main Files**:

-	hospital_database.sql - Complete database export

-	queries.sql - All required SQL queries with descriptive names

-	README.md - This documentation file

**SQL Queries Included:**
1.	get_doctors_by_hospital - List doctors at a specific hospital
2.	get_patient_prescriptions - Patient medication history ordered by date
3.	get_doctor_prescriptions - Doctor's prescription history
4.	add_new_patient - Register new patient functionality
5.	get_most_prescribing_doctor - Identify most active prescribing doctor
6.	get_doctors_at_largest_hospital - Doctors at hospital with most beds

## DESCRIPTION
### Problem Statement
Healthcare institutions require efficient database systems to manage patient records, doctor assignments, hospital information, and prescription tracking. This project designs and implements a comprehensive MySQL database system to support hospital operations, enabling better patient care coordination and medical resource management.
The objective is to create a relational database that can efficiently store and retrieve healthcare information to support common hospital operations.

### Dataset Description

The database consists of four main tables:

| Table | Records | Description |
|-------|---------|-------------|
| Hospitals | 40 | Hospital details |
| Doctors | 100 | Doctors records |
| Patients | 600 | Patient records and medical assignments |
| Prescriptions | 500 | Medication prescriptions and treatment records |

### Variables Description

**Hospitals Table**
| Variable | Type | Description |
|----------|------|-------------|
| hospital_id | INT | Unique identifier for each hospital |
| hospital_name | VARCHAR(255) | Name of the hospital |
| address | VARCHAR(255) | Physical location address |
| num_beds | INT | Number of beds (hospital capacity) |
| hospital_type | VARCHAR(50) | Type: Teaching, Community, Research, General, Specialty |
| accreditation_status | VARCHAR(50) | Status: Accredited or Not Accredited |

**Doctors Table**
| Variable | Type | Description |
|----------|------|-------------|
| doctor_id | INT | Unique identifier for each doctor |
| name | VARCHAR(255) | Doctor's full name |
| date_of_birth | DATE | Doctor's date of birth |
| address | TEXT | Contact address |
| role | VARCHAR(50) | Professional role |
| hospital_id | INT | Foreign key linking to Hospitals |

**Patients Table**
| Variable | Type | Description |
|----------|------|-------------|
| person_id | INT | Unique patient identifier |
| name | VARCHAR(255) | Patient's full name |
| date_of_birth | DATE | Patient's date of birth |
| address | TEXT | Contact address |
| role | VARCHAR(50) | Patient role |
| doctor_id | INT | Foreign key linking to assigned Doctor |

**Prescriptions Table**
| Variable | Type | Description |
|----------|------|-------------|
| prescription_id | INT | Unique prescription identifier |
| patient_id | INT | Foreign key linking to Patients |
| doctor_id | INT | Foreign key linking to Doctors |
| medication | VARCHAR(255) | Prescribed medication name |
| prescription_date | DATE | Date prescription was issued |

**Primary Keys:**

Each table has a unique primary key for record identification:

- Hospitals: hospital_id

- Doctors: doctor_id

- Patients: person_id  

- Prescriptions: prescription_id



**Foreign Key Relationships:**

-	Doctors → Hospitals (many-to-one)

-	Patients → Doctors (many-to-one)

-	Prescriptions → Patients (many-to-one)

-	Prescriptions → Doctors (many-to-one)


**Data Integrity:**

-	Foreign key constraints ensure referential integrity

-	Cascading relationships maintain data consistency

-	Prevents orphaned records in related tables

### Project Task: Database Design & Implementation

**Data Modeling:**

-	Designed Entity Relationship Diagram (ERD) to establish table relationships

-	Implemented primary keys and foreign key constraints for data integrity

-	Established one-to-many relationships between Hospitals-Doctors and Doctors-Patients

-	Created many-to-many relationship resolution through Prescriptions table


**Database Creation:**

-	Created MySQL database with four normalized tables

-	Imported data from CSV files using LOAD DATA LOCAL INFILE

-	Implemented proper data types and constraints

-	Verified data integrity through relationship validation


**Project Task: Query Development**

**Data Retrieval:**

1.	get_doctors_by_hospital - Retrieve all doctors based at a specific hospital

2.	get_patient_prescriptions - List patient's prescriptions history ordered by date

3.	get_doctor_prescriptions - View all prescriptions issued by a specific doctor

4.	add_new_patient - Register new patients in the system


**Data Analysis:**

5. get_most_prescribing_doctor - Identify the most active prescribing doctor

6. get_doctors_at_largest_hospital - Find doctors working at the hospital with maximum capacity


**Data Integrity Checks:**

-	Verified foreign key relationships work correctly

-	Validated that all prescriptions reference existing patients and doctors

-	Confirmed hospital-doctor assignments are consistent

-	Tested query functionality with sample data


**Performance Validation:**

-	All queries execute without errors

-	Relationships maintain referential integrity

-	Data retrieval operations return expected results

-	INSERT operations successfully add new records


**Technical Documentation:**

-	Comprehensive README with project description

-	SQL query documentation with clear naming conventions

-	Database schema explanation

-	Setup and usage instructions


**Deployment Ready:**

-	Complete database export in hospital_database.sql

-	All functional SQL queries in queries.sql

-	GitHub repository with version control

-	Public access for assessment purposes


**Files Included:**

-	hospital_database.sql - Complete database export

-	queries.sql - All 6 functional SQL queries with descriptive names

-	doctors.csv - Original doctor data (100 records)

-	hospitals.csv - Original hospital data (40 records)

-	patients.csv - Original patient data (600 records)

-	prescriptions.csv - Original prescription data (500 records)

-	README.md - Project documentation (this file)

-	ERD diagrams - Database relationship diagrams


**Conclusion**

This hospital database system successfully demonstrates:

-	Proper relational database design with normalized tables

-	Effective use of primary and foreign keys for data integrity

-	Functional SQL queries for common hospital operations

-	Comprehensive documentation for maintainability


The system is ready for deployment and can be extended with additional healthcare modules.
