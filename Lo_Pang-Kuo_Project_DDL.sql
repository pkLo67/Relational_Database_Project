--DBST 651
--Pang-Kuo Lo
--Project Step #3: Data Definition Language (DDL) SQL Script



--Drop Statements to clean up all objects from previous run

--Drop Triggers
DROP TRIGGER trg_presc_drug;
DROP TRIGGER trg_prescription;
DROP TRIGGER trg_doctor;
DROP TRIGGER trg_patient;
DROP TRIGGER trg_drug;
DROP TRIGGER trg_pharmacy;



--Drop Sequences
DROP SEQUENCE seq_doctor_id;
DROP SEQUENCE seq_patient_id;
DROP SEQUENCE seq_presc_id;
DROP SEQUENCE seq_pharm_id;
DROP SEQUENCE seq_presc_drug_id;



--Drop Views
DROP VIEW doctor_view;
DROP VIEW patient_view;
DROP VIEW drug_view;
DROP VIEW pharmacy_view;
DROP VIEW prescription_view;
DROP VIEW presc_drug_view;
DROP VIEW presc_pat_dr;
DROP VIEW cost_per_presc;



--Drop Indexes
DROP INDEX doctor_tel_idx;
DROP INDEX patient_ssn_idx;
DROP INDEX patient_tel_idx;
DROP INDEX pharm_tel_idx;

DROP INDEX presc_doctor_fk_idx;
DROP INDEX presc_patient_fk_idx;
DROP INDEX presc_drug_drug_fk_idx;
DROP INDEX presc_drug_pharmacy_fk_idx;
DROP INDEX presc_drug_prescription_fk_idx;

DROP INDEX dr_first_name_idx;
DROP INDEX dr_last_name_idx;
DROP INDEX pat_first_name_idx;
DROP INDEX pat_last_name_idx;
DROP INDEX drug_cost_idx;
DROP INDEX pharm_name_idx;
DROP INDEX pharm_city_idx;
DROP INDEX pharm_zip_idx;



--Drop Tables
DROP TABLE presc_drug CASCADE CONSTRAINTS;
DROP TABLE prescription CASCADE CONSTRAINTS;
DROP TABLE doctor CASCADE CONSTRAINTS;
DROP TABLE patient CASCADE CONSTRAINTS;
DROP TABLE drug CASCADE CONSTRAINTS;
DROP TABLE pharmacy CASCADE CONSTRAINTS;




--Create/Alter Statements for All Tables and Constraints

CREATE TABLE doctor (
    doctor_id     INTEGER NOT NULL,
    dr_first_name VARCHAR2(30) NOT NULL,
    dr_last_name  VARCHAR2(30) NOT NULL,
    dr_specialty  VARCHAR2(40),
    dr_address    VARCHAR2(50),
    doctor_tel    CHAR(12) NOT NULL,
    doctor_email  VARCHAR2(50)
);

ALTER TABLE doctor ADD CONSTRAINT doctor_pk PRIMARY KEY ( doctor_id );

CREATE TABLE drug (
    drug_code      CHAR(10) NOT NULL,
    drug_desc      VARCHAR2(50) NOT NULL,
    drug_trademark VARCHAR2(30) NOT NULL,
    drug_dose      VARCHAR2(20) NOT NULL,
    drug_formula   VARCHAR2(50) NOT NULL,
    ingredients    VARCHAR2(100) NOT NULL,
    drug_uses      VARCHAR2(100) NOT NULL,
    drug_cost      NUMBER(9, 2) NOT NULL,
    manufacturer   VARCHAR2(50) NOT NULL
);

ALTER TABLE drug ADD CONSTRAINT drug_pk PRIMARY KEY ( drug_code );

CREATE TABLE patient (
    patient_id     INTEGER NOT NULL,
    pat_first_name VARCHAR2(30) NOT NULL,
    pat_last_name  VARCHAR2(30) NOT NULL,
    patient_dob    DATE NOT NULL,
    patient_ssn    CHAR(11) NOT NULL,
    patient_gender CHAR(1) NOT NULL,
    pat_address    VARCHAR2(50) NOT NULL,
    patient_tel    CHAR(12) NOT NULL,
    patient_email  VARCHAR2(50) NOT NULL
);

ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_id );

CREATE TABLE pharmacy (
    pharm_id    INTEGER NOT NULL,
    pharm_name  VARCHAR2(30) NOT NULL,
    pharm_city  VARCHAR2(30) NOT NULL,
    pharm_state CHAR(2) NOT NULL,
    pharm_zip   CHAR(5) NOT NULL,
    pharm_tel   CHAR(12) NOT NULL,
    pharm_fax   CHAR(12) NOT NULL,
    pharm_email VARCHAR2(50)
);

ALTER TABLE pharmacy ADD CONSTRAINT pharmacy_pk PRIMARY KEY ( pharm_id );


CREATE TABLE prescription (
    presc_id   INTEGER NOT NULL,
    presc_date DATE NOT NULL,
    presc_use  VARCHAR2(50) NOT NULL,
    items_no   INTEGER NOT NULL,
    pay_method VARCHAR2(20) NOT NULL,
    card_no    CHAR(16) NOT NULL,
    presc_note VARCHAR2(100),
    doctor_id  INTEGER NOT NULL,
    patient_id INTEGER NOT NULL
);

ALTER TABLE prescription ADD CONSTRAINT prescription_pk PRIMARY KEY (presc_id);


CREATE TABLE presc_drug (
    presc_drug_id   INTEGER NOT NULL,
    quantity        INTEGER NOT NULL,
    total_cost      NUMBER(9, 2) NOT NULL,
    refill_no       INTEGER NOT NULL,
    batch_no        VARCHAR2(30) NOT NULL,
    expiration_date DATE NOT NULL,
    dispense_date   DATE,
    drug_code       CHAR(10) NOT NULL,
    pharm_id        INTEGER NOT NULL,
    presc_id        INTEGER NOT NULL
);

ALTER TABLE presc_drug ADD CONSTRAINT presc_drug_pk PRIMARY KEY (presc_drug_id);



ALTER TABLE prescription
    ADD CONSTRAINT prescription_doctor_fk FOREIGN KEY ( doctor_id )
        REFERENCES doctor ( doctor_id );

ALTER TABLE prescription
    ADD CONSTRAINT prescription_patient_fk FOREIGN KEY ( patient_id )
        REFERENCES patient ( patient_id );

ALTER TABLE presc_drug
    ADD CONSTRAINT presc_drug_drug_fk FOREIGN KEY ( drug_code )
        REFERENCES drug ( drug_code );

ALTER TABLE presc_drug
    ADD CONSTRAINT presc_drug_pharmacy_fk FOREIGN KEY ( pharm_id )
        REFERENCES pharmacy ( pharm_id );

ALTER TABLE presc_drug
    ADD CONSTRAINT presc_drug_prescription_fk FOREIGN KEY ( presc_id )
        REFERENCES prescription ( presc_id );




--Create Indexes for Natural, Foreign Key, and Frequently Queried Columns

--Create unique index on natural key columns
CREATE UNIQUE INDEX doctor_tel_idx ON doctor ( doctor_tel );
CREATE UNIQUE INDEX patient_ssn_idx ON patient ( patient_ssn );
CREATE UNIQUE INDEX patient_tel_idx ON patient ( patient_tel );
CREATE UNIQUE INDEX pharm_tel_idx ON pharmacy ( pharm_tel );


--Create index on foreign key columns

CREATE INDEX presc_doctor_fk_idx ON prescription ( doctor_id );
CREATE INDEX presc_patient_fk_idx ON prescription ( patient_id );
CREATE INDEX presc_drug_drug_fk_idx ON presc_drug ( drug_code );
CREATE INDEX presc_drug_pharmacy_fk_idx ON presc_drug ( pharm_id );
CREATE INDEX presc_drug_prescription_fk_idx ON presc_drug ( presc_id );


--Create index on frequently queried columns

CREATE INDEX dr_first_name_idx ON doctor ( dr_first_name );
CREATE INDEX dr_last_name_idx ON doctor ( dr_last_name );
CREATE INDEX pat_first_name_idx ON patient ( pat_first_name );
CREATE INDEX pat_last_name_idx ON patient ( pat_last_name );
CREATE INDEX drug_cost_idx ON drug ( drug_cost );
CREATE INDEX pharm_name_idx ON pharmacy ( pharm_name );
CREATE INDEX pharm_city_idx ON pharmacy ( pharm_city );
CREATE INDEX pharm_zip_idx ON pharmacy ( pharm_zip );




--Alter Tables by adding Audit Columns

ALTER TABLE doctor ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);


ALTER TABLE patient ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);


ALTER TABLE drug ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);


ALTER TABLE pharmacy ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);


ALTER TABLE prescription ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);


ALTER TABLE presc_drug ADD (
    created_by	  VARCHAR2(30) NOT NULL, 
    date_created  DATE NOT NULL, 
    modified_by	  VARCHAR2(30) NOT NULL, 
    date_modified DATE NOT NULL
);





--Create Views
/*Only business columns, but not audit columns, are included in views*/


--The view for Doctor
/*Business purpose: The Doctor view will be used primarily for rapidly 
fetching information about individual doctors who write prescriptions 
for patients.*/

CREATE OR REPLACE VIEW doctor_view AS
SELECT doctor_id, dr_first_name, dr_last_name, doctor_tel 
FROM doctor;


--The view for Patient
/*Business purpose: The Patient view will be used primarily for rapidly 
fetching information about individual patients who has prescriptions 
written from doctors.*/

CREATE OR REPLACE VIEW patient_view AS
SELECT patient_id, pat_first_name, pat_last_name, patient_dob, patient_ssn,
       patient_tel, patient_email 
FROM patient;


--The view for Drug
/*Business purpose: The Drug view will be used primarily for rapidly 
fetching information about drugs that can be prescribed by doctors.*/

CREATE OR REPLACE VIEW drug_view AS
SELECT drug_code, drug_desc, drug_trademark, drug_dose, drug_formula,
       ingredients, drug_uses, drug_cost 
FROM drug;


--The view for Pharmacy
/*Business purpose: The Pharmacy view will be used primarily for rapidly 
fetching information about pharmacies that sell prescribed drugs.*/

CREATE OR REPLACE VIEW pharmacy_view AS
SELECT pharm_id, pharm_name, pharm_city, pharm_state, pharm_zip,
       pharm_tel, pharm_email 
FROM pharmacy;


--The view for Prescription
/*Business purpose: The Prescription view will be used primarily for rapidly 
fetching information about prescriptions written by doctors for patients.*/

CREATE OR REPLACE VIEW prescription_view AS
SELECT presc_id, presc_date, presc_use, items_no, pay_method, card_no,
       doctor_id, patient_id 
FROM prescription;


--The view for Presc_drug
/*Business purpose: The Presc_drug view will be used primarily for rapidly 
fetching information about prescribed drugs shown on prescriptions.*/

CREATE OR REPLACE VIEW presc_drug_view AS
SELECT presc_drug_id, quantity, total_cost, refill_no, batch_no, 
       expiration_date, dispense_date, drug_code, pharm_id, presc_id 
FROM presc_drug;


--The view for Presc_Pat_Dr
/*Business purpose: The presc_pat_dr view will be used primarily for rapidly 
fetching information about prescriptions that belong to which patients and 
are written by which doctors.*/

CREATE OR REPLACE VIEW presc_pat_dr AS
SELECT presc_id, presc_date, presc_use, pat_first_name, pat_last_name, 
       dr_first_name, dr_last_name
FROM prescription pr JOIN patient pa ON pr.patient_id = pa.patient_id JOIN
     doctor d ON pr.doctor_id = d.doctor_id;


--The view for cost_per_presc
/*Business purpose: The cost_per_presc view will be used primarily for 
rapidly fetching information about the total cost of prescribed drugs from 
a prescription and which patient is responsible for this prescription
cost.*/

CREATE OR REPLACE VIEW cost_per_presc AS
SELECT pr.presc_id, SUM(total_cost) AS total_cost, pat_first_name,
       pat_last_name, pay_method, card_no
FROM presc_drug pd 
LEFT OUTER JOIN prescription pr ON pd.presc_id = pr.presc_id
LEFT OUTER JOIN patient pa ON pr.patient_id = pa.patient_id
Group BY pat_first_name, pat_last_name, pr.presc_id, pay_method, card_no
ORDER BY pr.presc_id;





--Create Sequences

CREATE SEQUENCE seq_doctor_id
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE seq_patient_id
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE seq_presc_id
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE seq_pharm_id
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;


CREATE SEQUENCE seq_presc_drug_id
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;






--Create Triggers

--The Trigger for Doctor
/*Business Purpose: This trigger populates surrogate key and audit columns 
with appropriate values into the Doctor table.*/

CREATE OR REPLACE TRIGGER trg_doctor
  BEFORE INSERT OR UPDATE ON doctor
  FOR EACH ROW
BEGIN
  -- use the sequence object to generate the surrogate key
  IF :NEW.doctor_id IS NULL THEN
    :NEW.doctor_id := seq_doctor_id.NEXTVAL;
  END IF;

  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/


--The Trigger for Patient
/*Business Purpose: This trigger populates surrogate key and audit columns 
with appropriate values into the Patient table.*/

CREATE OR REPLACE TRIGGER trg_patient
  BEFORE INSERT OR UPDATE ON patient
  FOR EACH ROW
BEGIN
  -- use the sequence object to generate the surrogate key
  IF :NEW.patient_id IS NULL THEN
    :NEW.patient_id := seq_patient_id.NEXTVAL;
  END IF;

  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/


--The Trigger for Prescription
/*Business Purpose: This trigger populates surrogate key and audit columns 
with appropriate values into the Prescription table.*/

CREATE OR REPLACE TRIGGER trg_prescription
  BEFORE INSERT OR UPDATE ON prescription
  FOR EACH ROW
BEGIN
  -- use the sequence object to generate the surrogate key
  IF :NEW.presc_id IS NULL THEN
    :NEW.presc_id := seq_presc_id.NEXTVAL;
  END IF;

  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/


--The Trigger for Drug
/*Business Purpose: This trigger populates audit columns with appropriate 
values into the Drug table.*/

CREATE OR REPLACE TRIGGER trg_drug
  BEFORE INSERT OR UPDATE ON drug
  FOR EACH ROW
BEGIN
  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/


--The Trigger for Pharmacy
/*Business Purpose: This trigger populates surrogate key and audit columns 
with appropriate values into the Pharmacy table.*/

CREATE OR REPLACE TRIGGER trg_pharmacy
  BEFORE INSERT OR UPDATE ON pharmacy
  FOR EACH ROW
BEGIN
  -- use the sequence object to generate the surrogate key
  IF :NEW.pharm_id IS NULL THEN
    :NEW.pharm_id := seq_pharm_id.NEXTVAL;
  END IF;

  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/


--The Trigger for Presc_Drug
/*Business Purpose: This trigger populates surrogate key and audit columns 
with appropriate values into the Presc_Drug table.*/

CREATE OR REPLACE TRIGGER trg_presc_drug
  BEFORE INSERT OR UPDATE ON presc_drug
  FOR EACH ROW
BEGIN
  -- use the sequence object to generate the surrogate key
  IF :NEW.presc_drug_id IS NULL THEN
    :NEW.presc_drug_id := seq_presc_drug_id.NEXTVAL;
  END IF;

  -- automatically generate appropriate values for audit columns  
  IF INSERTING THEN
    IF :NEW.created_by IS NULL THEN :NEW.created_by := USER; END IF;
    IF :NEW.date_created IS NULL THEN :NEW.date_created := SYSDATE; END IF;
  END IF;  
  IF INSERTING OR UPDATING THEN
    IF :NEW.modified_by IS NULL THEN :NEW.modified_by := USER; END IF;
    IF :NEW.date_modified IS NULL THEN :NEW.date_modified := SYSDATE; END IF;
  END IF;
END;
/




--Database Catalog/Data Dictionary Queries

SELECT TABLE_NAME 
FROM USER_TABLES;

  
SELECT OBJECT_NAME, STATUS, CREATED, LAST_DDL_TIME 
FROM USER_OBJECTS;


















