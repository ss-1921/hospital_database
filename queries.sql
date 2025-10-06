# SQL Queries to extract various data

# get_doctors_by_hospital: List all doctors based at a particular hospital

SELECT d.name as doctor_name, h.hospital_name
FROM Doctors d
JOIN Hospitals h ON d.hospital_id = h.hospital_id
WHERE h.hospital_id = 1; # Replace with desired hospital_id


# get_patient_prescriptions: List all prescriptions for a particular patient, ordered by prescription date

SELECT p.name as patient_name, pr.medication, pr.prescription_date
FROM Prescriptions pr
JOIN Patients p ON pr.patient_id = p.person_id
WHERE p.person_id = 345 # Replace with desired patient_id
ORDER BY pr.prescription_date;


# get_doctor_prescriptions: List all prescriptions that a particular doctor has prescribed

SELECT d.name as doctor_name, pr.medication, pr.prescription_date, p.name as patient_name
FROM Prescriptions pr
JOIN Doctors d ON pr.doctor_id = d.doctor_id
JOIN Patients p ON pr.patient_id = p.person_id
WHERE d.doctor_id = 11 # Replace with desired doctor_id
ORDER BY pr.prescription_date;


# add_new_patient: Add a new patient to the database

INSERT INTO Patients (person_id, name, date_of_birth, address, role, doctor_id)
VALUES (701, 'John Smith', '1990-05-15', '123 Main Street, Anytown, CA 12345', 'Patient', 1);
#Note: person_id should be unique and not already exist


# get_most_prescribing_doctor: Identify which doctor has made the most prescriptions

SELECT d.name as doctor_name, COUNT(pr.prescription_id) as prescription_count
FROM Doctors d
JOIN Prescriptions pr ON d.doctor_id = pr.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY prescription_count DESC
LIMIT 1;


# get_doctors_at_largest_hospital: List all doctors at the hospital with the most beds

SELECT d.name as doctor_name, h.hospital_name, h.num_beds as bed_count
FROM Doctors d
JOIN Hospitals h ON d.hospital_id = h.hospital_id
WHERE h.num_beds = (SELECT MAX(num_beds) FROM Hospitals);
