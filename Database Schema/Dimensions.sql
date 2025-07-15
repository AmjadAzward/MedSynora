-- Table 1: DimDate
CREATE TABLE DimDate (
    Date DATE,
    DateKey INT PRIMARY KEY,
    Year INT,
    Month INT,
    Day INT,
    Quarter INT,
    Weekday NVARCHAR(10),
    Date_String NVARCHAR(50)
);



-- Table 2: DimPatient
CREATE TABLE DimPatient (
    Patient_ID NVARCHAR(100) PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    Nationality NVARCHAR(100),
    Gender NVARCHAR(10),
    BirthDate DATE,
    HeightCM INT,
    WeightKG INT,
    MaritalStatus NVARCHAR(20),
    BloodType NVARCHAR(5)
);

-- Table 3: DimDoctor
CREATE TABLE DimDoctor (
    Doctor_ID INT PRIMARY KEY,
    DoctorName NVARCHAR(100),
    DoctorSurname NVARCHAR(100),
    DoctorTitle NVARCHAR(50),
    DoctorNationality NVARCHAR(50),
    MedicalUnit NVARCHAR(100),
    MaxPatientCount NVARCHAR(100)
);

-- Table 4: DimDisease
CREATE TABLE DimDisease (
    Disease_ID INT PRIMARY KEY,
    AdmissionDiagnosis NVARCHAR(200),
    DiseaseType NVARCHAR(100),
    DiseaseSeverity NVARCHAR(50),
    MedicalUnit NVARCHAR(100)
);

-- Table 5: DimInsurance
CREATE TABLE DimInsurance (
    InsuranceKey INT PRIMARY KEY,
    Insurance_Plan_Name NVARCHAR(100),
    Coverage_Limit DECIMAL(18, 2),
    Deductible DECIMAL(18, 2),
    Excluded_Treatments NVARCHAR(MAX),
    Partial_Coverage_Treatments NVARCHAR(MAX)
);

-- Table 6: DimRoom
CREATE TABLE DimRoom (
    RoomKey INT PRIMARY KEY,
    RoomType NVARCHAR(50),
    RoomCost DECIMAL(10, 2)
);

-- Table 7: DimChronicDisease
CREATE TABLE DimChronicDisease (
    ChronicDiseaseID INT PRIMARY KEY,
    DiseaseName NVARCHAR(100)
);

-- Table 8: DimAllergy
CREATE TABLE DimAllergy (
    AllergyID INT PRIMARY KEY,
    AllergyName NVARCHAR(100)
);

-- Table 9: DimSpecialTest
CREATE TABLE DimSpecialTest (
    Encounter_ID INT,
    Test_ID INT PRIMARY KEY,
    Test_Phase NVARCHAR(50),
    Test_Name NVARCHAR(100),
    Test_Result NVARCHAR(50)
);
use MEDSYNORA

-- Table 10: DimTreatment
CREATE TABLE DimTreatment (
    Treatment_ID INT PRIMARY KEY,
    Encounter_ID INT,
    Treatment_Type NVARCHAR(50),
    Treatment_Name NVARCHAR(100),
    Follow_Up NVARCHAR(10),
    Complications NVARCHAR(10),
    Drug_Boxes_Used INT,
    Therapy_Sessions INT
);

-- Table 11: DimAdditionalService
CREATE TABLE DimAdditionalService (
    AdditionalServiceID INT PRIMARY KEY,
    ServiceName NVARCHAR(100)
);
