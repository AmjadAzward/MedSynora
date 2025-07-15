CREATE TABLE BridgeEncounterDoctor (
    Encounter_ID INT,
    Doctor_ID INT,
    PRIMARY KEY (Encounter_ID, Doctor_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DimDoctor(Doctor_ID)
);


CREATE TABLE Patient_ChronicDisease (
    Patient_ID  NVARCHAR(100),
    ChronicDiseaseID INT,
    PRIMARY KEY (Patient_ID, ChronicDiseaseID),
    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (ChronicDiseaseID) REFERENCES DimChronicDisease(ChronicDiseaseID)
);


CREATE TABLE Patient_Allergy (
	Patient_ID NVARCHAR(100) ,
    AllergyID INT,
    PRIMARY KEY (Patient_ID, AllergyID),
    FOREIGN KEY (Patient_ID) REFERENCES DimPatient(Patient_ID),
    FOREIGN KEY (AllergyID) REFERENCES DimAllergy(AllergyID)
);

CREATE TABLE BridgeEncounterAdditionalService (
    Encounter_ID INT,
    AdditionalServiceID INT,
    PRIMARY KEY (Encounter_ID, AdditionalServiceID),
    FOREIGN KEY (AdditionalServiceID) REFERENCES DimAdditionalService(AdditionalServiceID)
);


