# Dental Clinics Integration Management System

This project is an integrated system for managing two dental clinics with common patients, utilizing C# and ASP.NET as a web application. The system includes interfaces for radiology and pharmacy operations.

## Project Overview

The system consists of two clinics:
- **Clinic_1 (Server/Base Clinic):** Manages patient data and acts as the main server.
- **Clinic_2 (Client):** Receives patient information from Clinic_1 and can request patient data.

## Setup Instructions

### SQL Database Setup
1. Download SQL scripts for Clinic_1 & Clinic_2.
2. Open the scripts on your SQL Database Server.
3. Execute each line to create databases and tables.
4. Verify that databases with all tables are created.

### Running Clinic_1
1. Navigate to the Login Page.
   - Username: Mayar
   - Password: mayar123
2. Explore the Electronic Medical Record (EMR) Page with seven sections:
   - **Searching for Patient Details**
   - **Add Prescription**
   - **Show Past Progress**
   - **Medication Request**
   - **Radiology Request**
   - **Show Past Medication**
   - **Show Past Radiology**
3. Use the "View Requests" button to accept patient data requests from Clinic_2.

### Running Clinic_2
1. Access the Login Page.
   - Username: Ganna
   - Password: ganna123
2. Explore the EMR Page with similar functionality to Clinic_1.
3. Utilize the "Request Patient Data" button to send requests to Clinic_1.

## Decision Support and Notifications

- Decision support for medication dosage and allergy alerts.
- Red alerts for incorrect dosage.
- Notifications for patient allergies.


