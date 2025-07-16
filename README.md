#  MedSynora Data Warehouse Project

##  Project Overview
The **Medsynora Data Warehouse (DW)** is built to integrate and consolidate hospital-related data from various structured sources to enable efficient healthcare analytics and reporting. It follows industry-standard practices in dimensional modeling, ETL processing, and BI visualization to support informed decision-making in the medical domain.

>  **Dataset Source**:  
> [Medsynora DW on Kaggle](https://www.kaggle.com/datasets/mebrar21/medsynora-dw)

---

![MedSynora Power BI Dashboard](https://github.com/Ilmaa2003/MedSynora/blob/main/Extra/Images/Screenshot%202025-07-16%20063954.png)

![MedSynora Power BI Dashboard 2](https://github.com/Ilmaa2003/MedSynora/blob/main/Extra/Images/Screenshot%202025-07-16%20064012.png)  

![MedSynora Power BI Dashboard 3](https://github.com/Ilmaa2003/MedSynora/blob/main/Extra/Images/Screenshot%202025-07-16%20064024.png)  

![MedSynora Power BI Dashboard 4](https://github.com/Ilmaa2003/MedSynora/blob/main/Extra/Images/Screenshot%202025-07-16%20064034.png)  

---

##  Objectives

-  Integrate data from multiple transactional systems and formats (CSV, SQL, Excel, XML, JSON).
-  Design and implement a **Galaxy Schema** to represent healthcare business processes.
-  Build reliable and reusable **ETL pipelines** using **Apache Hop**.
-  Construct and manage the data warehouse in **SQL Server Management Studio (SSMS)**.
-  Enable fast and interactive **data visualization and reporting via Power BI**.

---

##  Data Model

###  Fact Tables
- `FactEncounter`
- `FactTreatment`
- `FactLabTests`
- `FactVitals`
- `FactCost`
- `FactProcedures`
- `FactPatientHealthService`

###  Dimension Tables
| Table Name | Format |
|------------|--------|
| `DimPatient` | SQL |
| `DimDoctor` | CSV |
| `DimDisease` | XML |
| `DimChronicDisease` | Excel |
| `DimRoom` | CSV |
| `DimDate` | SQL |
| `DimSpecialTest` | JSON |
| `DimTreatment` | JSON |
| `DimAdditionalService` | XML |
| `DimAllergy` | Excel |
| `DimInsurance` | CSV |

###  Bridge Tables (CSV format)
- `Patient_ChronicDisease`
- `Patient_Allergy`
- `BridgeEncounterDoctor`
- `BridgeEncounterAdditionalService`

###  Schema Type
- **Galaxy Schema (also known as Fact Constellation)** — Multiple fact tables share common dimensions.

---

##  ETL Workflow

###  Extract
- Retrieve data from multi-format sources: SQL, CSV, Excel, XML, and JSON.

###  Transform
- Clean and normalize datasets.
- Handle nulls, data type mismatches, and duplicates.
- Create surrogate keys and apply business logic.

###  Load
- Load cleaned and transformed data into dimension and fact tables in SQL Server.
- Ensure referential integrity and indexing for optimal performance.

>  ETL pipelines are orchestrated using **Apache Hop**, ensuring visual development and job reusability.

---

##  Tools & Technologies

| Category | Tools |
|----------|-------|
| **Database** | SQL Server (via SSMS) |
| **ETL** | Apache Hop |
| **Business Intelligence** | Power BI |
| **Documentation/Modeling** | diagrams.net (draw.io) |
| **Data Formats** | CSV, Excel, SQL, XML, JSON |

---

## Sample Visualizations (via Power BI)
- Patient Insights Dashboard
- Patient Condition Dashboard
- Clinical Encounters & Diagnostics
- Cost, Insurance & Service Utilization


---

##  Notes

- The MedSynora DW supports integration-ready analytics for hospital operations, administrative decision-making, and patient care optimization.
- The use of multiple formats (CSV, Excel, XML, JSON) simulates a real-world scenario of data heterogeneity in the healthcare sector.
