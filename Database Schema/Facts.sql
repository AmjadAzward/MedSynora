-- FACT: Encounter
CREATE TABLE FactEncounter (
    Encounter_ID INT,
    Patient_ID NVARCHAR(100),
    Disease_ID INT,
    ResponsibleDoctorID INT,
    InsuranceKey INT,
    RoomKey INT,
    CheckinDateKey INT,
    CheckoutDateKey INT,
    Patient_Severity_Score INT,
    RadiologyProcedureCount INT,
    EndoscopyProcedureCount INT,
    CompanionPresent BIT,

    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (Disease_ID) REFERENCES DimDisease(Disease_ID),
    FOREIGN KEY (ResponsibleDoctorID) REFERENCES DimDoctor(Doctor_ID),
    FOREIGN KEY (InsuranceKey) REFERENCES DimInsurance(InsuranceKey),
    FOREIGN KEY (RoomKey) REFERENCES DimRoom(RoomKey),
    FOREIGN KEY (CheckinDateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (CheckoutDateKey) REFERENCES DimDate(DateKey)
);

-- FACT: Treatment
CREATE TABLE FactTreatment (
    Treatment_ID INT,
    Patient_ID NVARCHAR(100),
    Doctor_ID INT,
    TreatmentDateKey INT,

    Drug_Cost DECIMAL(10,2),
    Surgery_Cost DECIMAL(10,2),
    Post_Surgery_Care_Cost DECIMAL(10,2),
    Education_Rehab_Cost DECIMAL(10,2),
    Hospital_Drug_Quantity INT,
    Discharge_Drug_Quantity INT,
    Total_Drug_Quantity INT,

    FOREIGN KEY (Treatment_ID) REFERENCES DimTreatment(Treatment_ID),
    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DimDoctor(Doctor_ID),
    FOREIGN KEY (TreatmentDateKey) REFERENCES DimDate(DateKey)
);

-- FACT: Lab Tests
CREATE TABLE FactLabTests (
    Test_ID INT,
    Patient_ID NVARCHAR(100),
    Doctor_ID INT,
    Test_Value NVARCHAR(100),

    FOREIGN KEY (Test_ID) REFERENCES DimSpecialTest(Test_ID),
    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DimDoctor(Doctor_ID)
);

-- FACT: Vitals
CREATE TABLE FactVitals (
    Patient_ID NVARCHAR(100),
    DateKey INT,
    HeartRate FLOAT,
    Temperature FLOAT,
    SystolicBP FLOAT,
    DiastolicBP FLOAT,
    RespRate FLOAT,
    O2Sat FLOAT,
    ResponsibleDoctorID INT,

    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (ResponsibleDoctorID) REFERENCES DimDoctor(Doctor_ID)
);

-- FACT: Cost
CREATE TABLE FactCost (
    Patient_ID NVARCHAR(100),
    CostDateKey INT,
    InsuranceKey INT,
    CostType NVARCHAR(100),
    CostAmount DECIMAL(12,2),

    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (InsuranceKey) REFERENCES DimInsurance(InsuranceKey),
    FOREIGN KEY (CostDateKey) REFERENCES DimDate(DateKey)
);

-- FACT: Procedures
CREATE TABLE FactProcedures (
    Encounter_ID INT,
    Patient_ID NVARCHAR(100),
    ProcedureType NVARCHAR(50),
    ProcedureCount INT,
    DateKey INT,
    ResponsibleDoctorID INT,

    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (ResponsibleDoctorID) REFERENCES DimDoctor(Doctor_ID)
);

-- FACT: Patient Health Service
CREATE TABLE FactPatientHealthService (
    Patient_ID NVARCHAR(100),
    ChronicDiseaseID INT,
    AllergyID INT,
    AdditionalServiceID INT,
    Encounter_Count INT,
    Total_Cost DECIMAL(18,2),
    First_Encounter_Date INT,
    Last_Encounter_Date INT,

    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (ChronicDiseaseID) REFERENCES DimChronicDisease(ChronicDiseaseID),
    FOREIGN KEY (AllergyID) REFERENCES DimAllergy(AllergyID),
    FOREIGN KEY (AdditionalServiceID) REFERENCES DimAdditionalService(AdditionalServiceID)
);
