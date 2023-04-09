--DBST 651
--Pang-Kuo Lo
--Project Step #4: Data Manipulation Language (DML) and 20 Queries

--Add data to each table using DML

--Insert 10 rows of data into the table DOCTOR
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Fernand', 'Hanks', 'Internal Medicine', 
        '254 Bleeker, New York, NY 10005', 
        '212-545-1216', 'fhands@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Marilyn', 'Frantzen', 'Pediatrics', 
        '100 East 87th, New York, NY 10015', 
        '212-569-3762', 'mfrantzen@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Anita', 'Morris', 'Orthopedics', 
        '34 Maiden Lane, New York, NY 10015', 
        '212-388-3476', 'amorris@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Rick', 'Chow', 'Family Medicine', 
        '56 10th Avenue, New York, NY 10015', 
        '212-485-1762', 'rchow@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Tom', 'Wojick', 'Neurology', 
        '518 West 120th, New York, NY 10025', 
        '212-684-9832', 'twojick@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Nina', 'Schorin', 'Urology', 
        '210 West 101st, New York, NY 10025', 
        '212-774-2685', 'nschorin@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Todd', 'Smythe', 'Dermatology', 
        '210 West 103st, New York, NY 10025', 
        '212-775-9837', 'tsmythe@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Charles', 'Lowry', 'Ophthalmology', 
        '518 West 120th, New York, NY 10025', 
        '212-566-3644', 'clowry@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Gary', 'Pertez', 'Cardiology', 
        '34 Sixth Ave, New York, NY 10035', 
        '212-787-7543', 'gpertez@gmail.com');
INSERT INTO doctor (dr_first_name, dr_last_name, Dr_specialty, 
            dr_address, doctor_tel, doctor_email)
VALUES ('Irene', 'Willig', 'Cardiology', 
        '415 West 101st, New York, NY 10045', 
        '212-845-2548', 'iwillig@gmail.com');


--Insert 10 rows of data into the table PATIENT
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Fred', 'Crocitto', TO_DATE('02-JAN-2000','DD-MON-YYYY'),
        '218-51-3692', 'M', '101-09 120th St., Richmond Hill, NY 11419',
        '718-667-5692', 'fcrocitto@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Laetia', 'Enison', TO_DATE('16-MAR-1998','DD-MON-YYYY'),
        '217-61-9372', 'F', '144-61 87th Ave, Jamaica, NY 11435',
        '201-632-3857', 'lenison@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Angel', 'Moskowitz', TO_DATE('22-OCT-1994','DD-MON-YYYY'),
        '213-41-9281', 'F', '320 John St., Ft. Lee, NY 07024',
        '201-293-2846', 'amoskowitz@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Judith', 'Olvsade', TO_DATE('08-JUN-1992','DD-MON-YYYY'),
        '214-61-2847', 'F', '29 Elmwood Ave., Montclair, NY 07042',
        '214-826-1037', 'jolvsade@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Catherine', 'Mierzwa', TO_DATE('18-NOV-1996','DD-MON-YYYY'),
        '215-71-4923', 'F', '22-70 41st St., Astoria, NY 11105',
        '215-387-9027', 'cmierzwa@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Judy', 'Sethi', TO_DATE('12-APR-1999','DD-MON-YYYY'),
        '217-81-8237', 'F', '38 Bay 26th St., Brooklyn, NY 11214',
        '716-682-8263', 'jsethi@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Winsome', 'Laporte', TO_DATE('21-MAY-1995','DD-MON-YYYY'),
        '213-42-3648', 'M', '268 E. 3rd St, Brooklyn, NY 11226',
        '718-533-2947', 'wlaporte@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Sean', 'Pineda', TO_DATE('27-AUG-1991','DD-MON-YYYY'),
        '212-31-5493', 'M', '3 Salem Rd., New City, NY 10956',
        '212-573-2074', 'spineda@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Angela', 'Torres', TO_DATE('05-DEC-1992','DD-MON-YYYY'),
        '212-31-1038', 'F', '509 2nd St #4L, Brooklyn, NY 11215',
        '718-394-3877', 'atorres@gmail.com');
INSERT INTO patient (pat_first_name, pat_last_name, patient_dob, 
            patient_ssn, patient_gender, pat_address, patient_tel, 
            patient_email)
VALUES ('Monica', 'Waldman', TO_DATE('18-FEB-1998','DD-MON-YYYY'),
        '216-71-4037', 'F', '257 Depot Rd., Huntington, NY 11766',
        '718-875-9048', 'mwaldman@gmail.com');


--Insert 10 rows of data into the table DRUG
INSERT INTO drug (drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('I10837332', 'Ibuprofen', 'Advil', 'three times a day',
        'C13H18O2', 'Ibuprofen 200 mg', 
        'treat mild to moderate pain and arthritis',
        1.15, 'Pfizer');
INSERT INTO drug (drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('O23547364', 'Olmesartan', 'Benicar', 'once a day',
        'C24H26N6O3', 'Olmesartan 20 mg', 
        'treat high blood pressure (hypertension)',
        8.09, 'Lupin Limited');
INSERT INTO drug (drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('D20847476', 'Dicyclomine', 'Bentyl', 'four times a day',
        'C19H35NO2', 'Dicyclomine 20 mg', 
        'treat functional bowel or irritable bowel syndrome',
        0.87, 'Aptalis Pharma Canada');
INSERT INTO drug (drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('C76488378', 'Cetirizine', 'Zyrtec', 'once a day',
        'C21H25ClN2O3', 'Cetirizine 10 mg', 
        'treat cold or allergy symptoms',
        0.83, 'Johnson and Johnson');
INSERT INTO drug (drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('D34843734', 'Dexamethasone', 'Decadron', 'once a day',
        'C22H29FO5', 'Dexamethasone 10 mg', 
        'treat many different inflammatory conditions', 
        3.29, 'Fera Pharmaceuticals');
INSERT INTO drug(drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('H47637494', 'Hydrochlorothiazide', 'Esidrix', 'once a day',
        'C7H8ClN3O4S2', 'Hydrochlorothiazide 50 mg', 
        'treat high blood pressure (hypertension)',
        2.49, 'Merck');
INSERT INTO drug(drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('F68403835', 'Famotidine', 'Pepcid', 'twice a day',
        'C8H15N7O2S3', 'Famotidine 20 mg', 
        'treat and prevent ulcers in the stomach and intestines',
        1.27, 'Johnson and Johnson');
INSERT INTO drug(drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('C53274803', 'Clopidogrel', 'Plavix', 'once a day',
        'C16H16ClNO2S.H2SO4', 'Clopidogrel 75 mg', 
        'treat stroke, blood clot, or serious heart problem',
        3.59, 'Bristol-Myers Squibb');
INSERT INTO drug(drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('P39857223', 'Pseudoephedrine', 'Sudafed', 'twice a day',
        'C10H15NO', 'Pseudoephedrine 120 mg', 
        'treat nasal and sinus congestion',
        1.31, 'Johnson and Johnson');
INSERT INTO drug(drug_code, drug_desc, drug_trademark, drug_dose,
            drug_formula, ingredients, drug_uses, drug_cost,
            manufacturer)
VALUES ('R87462748', 'Ranitidine', 'Zantac', 'once a day',
        'C13H22N4O3S', 'Ranitidine 150 mg', 
        'treat and prevent ulcers in the stomach and intestines',
        0.87, 'GlaxoSmithKline');


--Insert 10 rows of data into the table PHARMACY
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Walgreens', 'Huntington', 'NY', '11766', '718-485-2984',
        '718-485-2992', 'customer@walgreens.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('CVS Health', 'Brooklyn', 'NY', '11232', '917-376-5849',
        '917-376-5852', 'customer@caremark.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Walmart', 'New York', 'NY', '10048', '646-472-3027',
        '646-472-3028', 'customer@walmart.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Rite Aid', 'Smithtown', 'NY', '11787', '212-873-9773',
        '212-873-9775', 'customer@riteaid.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Kroger', 'Amherst', 'NY', '11373', '716-309-4720',
        '716-309-4722', 'customer@kroger.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Albertsons', 'Brooklyn', 'NY', '11224', '718-472-7303',
        '718-472-7304', 'customer@albertsons.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('McKesson', 'Flushing', 'NY', '11366', '917-204-3936',
        '917-204-3938', 'customer@mcKesson.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Costco', 'Roslyn', 'NY', '11576', '646-473-9028',
        '646-473-9029', 'customer@costco.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('Cardinal', 'Hollis', 'NY', '11412', '718-367-2094',
        '718-367-2095', 'customer@cardinal.com');
INSERT INTO pharmacy (pharm_name, pharm_city, pharm_state, pharm_zip,
            pharm_tel, pharm_fax, pharm_email)
VALUES ('AmerisourceBergen', 'Monbasset', 'NY', '11303', '716-734-8364',
        '716-734-8365', 'customer@amerisourceBergen.com');


--Insert 12 rows of data into the table PRESCRIPTION
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('02-AUG-2022','DD-MON-YYYY'), 'treat inflammation',
        1, 'credit card', '2830174387483284', 'once a day for 14 days',
        1, 3);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'treat cold symptoms',
        3, 'credit card', '4734537940355473', 'for 14 days',
        4, 5);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'treat hypertension',
        1, 'credit card', '8732749229364927', 'once a day for 28 days',
        9, 1);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('04-AUG-2022','DD-MON-YYYY'), 'treat stroke',
        1, 'credit card', '4803849477937930', 'once a day for 28 days',
        10, 7);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('05-AUG-2022','DD-MON-YYYY'), 'treat stomach ulcers',
        1, 'credit card', '8748038774693077', 'four times a day for 28 days',
        1, 3);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('08-AUG-2022','DD-MON-YYYY'), 'treat stomach ulcers',
        1, 'debt card', '5467378937657976', 'twice a day for 14 days',
        1, 2);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('09-AUG-2022','DD-MON-YYYY'), 'treat stomach ulcers',
        1, 'credit card', '7382749203472027', 'once a day for 21 days',
        4, 4);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('10-AUG-2022','DD-MON-YYYY'), 'treat allergy',
        1, 'credit card', '6884993387903579', 'once a day for 10 days',
        7, 6);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('11-AUG-2022','DD-MON-YYYY'), 'treat hypertension',
        1, 'credit card', '3467907575024528', 'once a day for 28 days',
        10, 8);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('12-AUG-2022','DD-MON-YYYY'), 'treat stomach pain and ulcers',
        2, 'credit card', '9842704784262035', 'for 14 days',
        4, 9);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('15-AUG-2022','DD-MON-YYYY'), 'treat hypertension',
        1, 'debt card', '2983774665893734', 'once a day for 28 days',
        9, 10);
INSERT INTO prescription (presc_date, presc_use, items_no, pay_method,
            card_no, presc_note, doctor_id, patient_id)
VALUES (TO_DATE('16-AUG-2022','DD-MON-YYYY'), 'treat pain and inflammation',
        2, 'credit card', '5379927877466499', 'for 14 days',
        6, 5);


--Insert 16 rows of data into the table PRESC_DRUG
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (14, 46.06, 1, 'D01242022', TO_DATE('24-JUL-2023','DD-MON-YYYY'),
        TO_DATE('02-AUG-2022','DD-MON-YYYY'), 'D34843734', 1, 1);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (42, 48.30, 2, 'I07152022', TO_DATE('16-JUL-2023','DD-MON-YYYY'),
        TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'I10837332', 1, 2);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (14, 11.62, 2, 'C05212022', TO_DATE('22-MAY-2023','DD-MON-YYYY'),
        TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'C76488378', 1, 2);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 36.68, 2, 'P08142022', TO_DATE('15-AUG-2023','DD-MON-YYYY'),
        TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'P39857223', 1, 2);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 226.52, 3, 'O03172022', TO_DATE('18-MAR-2023','DD-MON-YYYY'),
        TO_DATE('03-AUG-2022','DD-MON-YYYY'), 'O23547364', 1, 3);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 100.52, 3, 'C04082022', TO_DATE('09-APR-2023','DD-MON-YYYY'),
        TO_DATE('04-AUG-2022','DD-MON-YYYY'), 'C53274803', 3, 4);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (112, 97.44, 2, 'D06132022', TO_DATE('14-JUN-2023','DD-MON-YYYY'),
        TO_DATE('05-AUG-2022','DD-MON-YYYY'), 'D20847476', 3, 5);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 35.56, 3, 'F09192022', TO_DATE('20-SEP-2023','DD-MON-YYYY'),
        TO_DATE('08-AUG-2022','DD-MON-YYYY'), 'F68403835', 4, 6);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (21, 18.27, 4, 'R02172022', TO_DATE('18-FEB-2023','DD-MON-YYYY'),
        TO_DATE('09-AUG-2022','DD-MON-YYYY'), 'R87462748', 4, 7);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (10, 32.90, 1, 'D05182022', TO_DATE('19-MAY-2023','DD-MON-YYYY'),
        TO_DATE('10-AUG-2022','DD-MON-YYYY'), 'D34843734', 5, 8);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 69.72, 3, 'H08222022', TO_DATE('23-AUG-2023','DD-MON-YYYY'),
        TO_DATE('11-AUG-2022','DD-MON-YYYY'), 'H47637494', 7, 9);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (42, 48.30, 2, 'I10142022', TO_DATE('15-OCT-2023','DD-MON-YYYY'),
        TO_DATE('12-AUG-2022','DD-MON-YYYY'), 'I10837332', 2, 10);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (14, 12.18, 2, 'R07272022', TO_DATE('28-JUL-2023','DD-MON-YYYY'),
        TO_DATE('12-AUG-2022','DD-MON-YYYY'), 'R87462748', 2, 10);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (28, 226.52, 3, 'O03282022', TO_DATE('29-MAR-2023','DD-MON-YYYY'),
        TO_DATE('15-AUG-2022','DD-MON-YYYY'), 'O23547364', 8, 11);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (42, 48.30, 2, 'I08092022', TO_DATE('10-AUG-2023','DD-MON-YYYY'),
        TO_DATE('16-AUG-2022','DD-MON-YYYY'), 'I10837332', 2, 12);
INSERT INTO presc_drug (Quantity, total_cost, refill_no, batch_no,
            expiration_date, dispense_date, drug_code, pharm_id,
            presc_id)
VALUES (14, 46.06, 2, 'D04162022', TO_DATE('17-APR-2023','DD-MON-YYYY'),
        TO_DATE('16-AUG-2022','DD-MON-YYYY'), 'D34843734', 2, 12);

COMMIT;



--20 SQL Queries (12 Basic, 8 Advanced) 

--Query 1: 
/*Select all columns and all rows from one table*/
SELECT * 
FROM doctor;

--Query 2: 
/*Select five columns and all rows from one table*/
SELECT patient_id, pat_first_name, pat_last_name, 
       patient_dob, patient_ssn
FROM patient;

--Query 3: 
/*Select all columns from all rows from one view*/
SELECT *
FROM cost_per_presc;

--Query 4:
/*Using a join on 2 tables, select all columns and all rows from 
the tables without the use of a Cartesian product*/
SELECT *
FROM prescription pr
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id;

--Query 5:
/*Select and order data retrieved from one table*/
SELECT drug_desc, drug_trademark, drug_cost
FROM drug
ORDER BY drug_cost;

--Query 6:
/*Using a join on 3 tables, select 5 columns from the 3 tables. 
Use syntax that would limit the output to 10 rows*/
SELECT pr.presc_id, dr_first_name, dr_last_name, 
       pat_first_name, pat_last_name
FROM prescription pr 
LEFT OUTER JOIN doctor d ON pr.doctor_id = d.doctor_id
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id 
FETCH FIRST 10 ROWS ONLY;

--Query 7:
/*Select distinct rows using joins on 3 tables*/
SELECT DISTINCT drug_desc, manufacturer, pharm_name
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
LEFT OUTER JOIN pharmacy ph ON pd.pharm_id = ph.pharm_id;

--Query 8:
/*Use GROUP BY and HAVING in a select statement using one or 
more tables*/ 
SELECT pr.presc_id, SUM(total_cost) AS total_cost
FROM presc_drug pd 
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
GROUP BY pr.presc_id
HAVING SUM(total_cost) >= 100;

--Query 9:
/*Use IN clause to select data from one or more tables*/
SELECT pr.presc_id, sum(total_cost) AS total_cost, pharm_name
FROM presc_drug pd 
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
LEFT OUTER JOIN pharmacy ph ON pd.pharm_id = ph.pharm_id
WHERE pharm_name IN ('Walgreens', 'CVS Health', 'Rite Aid')
GROUP BY pharm_name, pr.presc_id;

--Query 10:
/*Select length of one column from one table (use LENGTH function)*/
SELECT LENGTH(drug_desc) AS "The length of drug name"
FROM drug;

--Query 11:
/*Delete one record from one table. Use select statements to 
demonstrate the table contents before and after the DELETE 
statement. Make sure you use ROLLBACK afterwards so that 
the data will not be physically removed*/
SELECT * FROM presc_drug;

DELETE FROM presc_drug
WHERE presc_drug_id = 1;

SELECT * FROM presc_drug;

ROLLBACK;

--Query 12:
/*Update one record from one table. Use select statements to 
demonstrate the table contents before and after the UPDATE 
statement. Make sure you use ROLLBACK afterwards so that 
the data will not be physically removed*/
SELECT * FROM drug;

UPDATE drug
SET drug_cost = 1.55
WHERE drug_code = 'I10837332';

SELECT * FROM drug;

ROLLBACK;

--Query 13:
/*List prescriptions prescribed on and after August 8, 2022 and 
their information about who wrote these prescriptions and who
own them.*/
SELECT pr.presc_id AS presscription_ID, 
       presc_date AS prescription_date, 
       dr_first_name AS doctor_first_name, 
       dr_last_name AS doctor_last_name,
       pat_first_name AS patient_first_name,
       pat_last_name AS patient_last_name
FROM prescription pr
LEFT OUTER JOIN doctor d ON pr.doctor_id = d.doctor_id
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id
WHERE presc_date >= TO_DATE('August 08 2022', 'Month DD YYYY');

--Query 14:
/*Calculate the frequency of prescribed drugs among all prescriptions 
and list frequencies in a descending order.*/
SELECT pd.drug_code, drug_desc, 
       ROUND(COUNT(*) / (SELECT COUNT(*) FROM prescription), 3) AS
       "The frequency of prescribed drugs"
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
GROUP BY pd.drug_code, drug_desc
ORDER BY "The frequency of prescribed drugs" DESC;

--Query 15:
/*List the top 3 of pharmacies based on their total sale prices.*/
SELECT pharm_name AS "Pharmacy Name", 
       SUM(total_cost) AS "Total Sale Prices"
FROM presc_drug pd
LEFT OUTER JOIN pharmacy ph ON pd.pharm_id = ph.pharm_id
GROUP BY pharm_name
ORDER BY "Total Sale Prices" DESC
FETCH FIRST 3 ROWS ONLY;

--Query 16:
/*List doctors who prescribed Dicyclomine, Famotidine, Ranitidine for 
treating gastric and intestinal ulcers.*/
SELECT dr_first_name AS doctor_first_name, 
       dr_last_name AS doctor_last_name, 
       drug_desc AS drug_generic_name, drug_uses
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
LEFT OUTER JOIN doctor dr ON pr.doctor_id = dr.doctor_id
WHERE drug_desc IN ('Dicyclomine', 'Famotidine', 'Ranitidine');

--Query 17:
/*List patients who obtained prescriptions from Dr.Fernand Hanks and 
how much they paied for their prescriptions*/
SELECT pat_first_name AS patient_first_name,
       pat_last_name AS patient_first_name,
       COUNT(*) AS "The number of prescriptions",
       SUM(total_cost) AS "Prescription payment"
FROM presc_drug pd
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
LEFT OUTER JOIN doctor d ON pr.doctor_id = d.doctor_id
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id
WHERE dr_first_name = 'Fernand' AND dr_last_name = 'Hanks'
GROUP BY pat_first_name, pat_last_name;

--Query 18:
/*List which pharmaceutical manufacturer sells the drug with the
highest total sale pricess according to the PRESC_DRUG table.*/
SELECT manufacturer AS "Pharmaceutical manufacturer",
       drug_desc AS "Drug generic name", 
       SUM(quantity) AS "The total prescribed quantity", 
       SUM(total_cost) AS "Total sale prices"
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
GROUP BY manufacturer, drug_desc
HAVING SUM(total_cost) = (
       SELECT MAX(SUM(total_cost))
       FROM presc_drug pd
       LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
       GROUP BY drug_desc
       );

--Query 19:
/*List which pharmacy sold Dexamethasone, which doctor prescribed
this drug, and which patient received this drug.*/
SELECT pharm_name AS "Pharmacy Name",
       dr_first_name AS "Doctor First Name",
       dr_last_name AS "Doctor Last Name",
       pat_first_name AS "Patient First Name",
       pat_last_name AS "Patient Last Name"
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
LEFT OUTER JOIN pharmacy ph ON pd.pharm_id = ph.pharm_id
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
LEFT OUTER JOIN doctor dr ON pr.doctor_id = dr.doctor_id
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id
WHERE drug_desc = 'Dexamethasone';

--Query 20:
/*Among drugs manufactured by Johnson and Johnson, which drug offers 
the best profit to this pharmaceutical company according to the 
PRESC_DRUG table.*/
SELECT drug_desc, SUM(total_cost)
FROM presc_drug pd
LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
WHERE manufacturer = 'Johnson and Johnson'
GROUP BY drug_desc
HAVING SUM(total_cost) = (
       SELECT MAX(SUM(total_cost))
       FROM presc_drug pd
       LEFT OUTER JOIN drug d ON pd.drug_code = d.drug_code
       WHERE manufacturer = 'Johnson and Johnson'
       GROUP BY drug_desc
       );
