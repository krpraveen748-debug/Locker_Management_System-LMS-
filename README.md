# Locker_Management_System-LMS-

## Abstract
**Locker_Management_System-LMS-** is a Java-based desktop/console application designed to automate locker allocation, access tracking, and persistent record storage. Using Java Object Serialization (`lockers.dat`) and streamlined batch execution (`run.bat`), it provides a lightweight solution for managing locker assignments across institutions, gyms, offices, or transit hubs.

## Problem Statement
Manual locker management using paper registers or static spreadsheets leads to double-booking, lost assignment histories, slow availability lookups, and human error during check-ins and check-outs. This project solves these issues by enforcing structured locker state tracking, automated availability checks, and persistent binary storage.

## Objectives
- **Automated Locker Allocation:** Assign available lockers quickly while preventing duplicate assignments.
- **Persistent Data Storage:** Serialize and store locker states and user records securely in `lockers.dat` across sessions.
- **Real-Time Status Tracking:** Instantly query occupied, vacant, and reserved lockers.
- **Cross-IDE & Batch Execution:** Support Eclipse (`.project`/`.classpath`), IntelliJ IDEA (`LMS.iml`), and one-click `run.bat` execution.

## Existing System vs. Proposed System

| Feature | Existing System | Proposed System |
| :--- | :--- | :--- |
| **Record Keeping** | Manual logbooks prone to misplacement | Automated binary persistence via Java Serialization (`lockers.dat`) |
| **Availability Check** | Physical inspection or manual scanning | Instant programmatic lookup of vacant and occupied lockers |
| **Data Integrity** | High risk of duplicate allocation | Enforced validation rules preventing conflicting assignments |
| **Execution & Setup** | Manual compilation steps | Pre-configured IDE project files and automated `run.bat` launcher |

## System Architecture
```text
User Input (Console / UI) -> Java Application Logic (Allocation & Validation) -> Java Object Serialization (lockers.dat)
```

## Technology Stack
- **Language:** Java (JDK 8+)
- **Persistence:** Java File I/O & Object Serialization (`lockers.dat`)
- **Scripting & IDEs:** Windows Batch (`run.bat`), Eclipse, IntelliJ IDEA

## Repository Structure
- `.classpath` & `.project` — Eclipse Java build configuration
- `LMS.iml` — IntelliJ IDEA module configuration
- `lockers.dat` — Serialized binary data store for locker records
- `run.bat` — Automated compile and launch script
- `Java_Final.pdf` — Complete project report, diagrams, and documentation

## Installation & Running
1. Verify Java is installed: `java -version`
2. Run **`run.bat`** on Windows or open the project folder in **IntelliJ IDEA / Eclipse** and run the main class.
