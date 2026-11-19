# SAP_ABAP
Projects ABAP Cloud
# ABAP Kurs: S4D400 (+exercises)

![ABAP](https://img.shields.io/badge/language-ABAP-0FAAFF)
![Environment](https://img.shields.io/badge/ADT-Eclipse-2C2255)
![Course](https://img.shields.io/badge/course-S4D400-1F6FEB)

My solutions to the exercises of the SAP course **S4D400**, written in
**ABAP Development Tools (Eclipse)**. The repository is exported from the SAP system with
[abapGit](https://abapgit.org/).

---

## Contents

| Package | Description |
|---|---|
| `ZS4D400_05` | Main package: SAP Kurs S4D400 |
| `Z400FINALTASK05` | Final task |
| `ZS4D400_05_RAP` | Objects for an OData UI service: Flights |

---

## Exercises

### First steps and control flow
| Class | Topic |
|---|---|
| `ZCL_05_INTERFACE` | First "Hello, World!" program |
| `ZCL_05_COMPUTE` | Calculations (Übung 4) |
| `ZCL_05_BRANCH` | Branching (Übung 5) |
| `ZCL_05_ITERATE` | Loops (Übung 6) |
| `ZCL_05_ITERATE_VERSION2` | Loops, second version (Übung 6) |
| `ZCL_05_BTT_DEBUG` | Debugging (Übung 7) |

### Classes and methods
| Class | Topic |
|---|---|
| `ZCL_05_LOCAL_CLASS` | Local classes (Übung 8 and 9) |
| `ZCL_05_METHODS` | Methods (Übung 10) |
| `ZCL_05_CONSTRUCTOR` | Constructors (Übung 12) |
| `ZCL_05_HOUSE` | Optional exercise (Übung 12.1) |

### Data access and internal tables
| Class | Topic |
|---|---|
| `ZCL_05_SELECT` | Reading data with `SELECT` (Übung 11) |
| `ZCL_05_STRUCTURE` | Structures (Übung 14) |
| `ZCL_05_ITAB` | Internal tables (Übung 15) |
| `ZCL_05_COPY` | Copies flight data to the table `Z05AFLGT` |

### CDS and RAP
| Class | Topic |
|---|---|
| `ZCL_05_CDS` | CDS views (Übung 13) |
| `ZCL_05_EML` | Entity Manipulation Language, EML (Übung 17) |

The package `ZS4D400_05_RAP` contains the objects of an OData UI service for flights.

---

## Final task

The package `Z400FINALTASK05` contains the final task of the course.

---

## How to run

1. Install [ABAP Development Tools](https://tools.eu1.hana.ondemand.com/) for Eclipse and connect to an ABAP system.
2. Install the abapGit plugin for ADT and link the package `ZS4D400_05` to this repository.
3. Pull the repository and activate all objects.
4. Run a class with **F9**. Classes implement `if_oo_adt_classrun`, and the output appears in the Console.

---

## imnaur

**Nana Imasheva**
