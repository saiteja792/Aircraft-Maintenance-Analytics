# Aircraft Maintenance & Flight Operations Analytics Dashboard

## Project Overview

This project analyzes 500,000 commercial airline flight records to evaluate operational performance, identify delay patterns, assess airline and airport efficiency, and uncover the primary causes of flight disruptions.

The solution combines Python, PostgreSQL, SQL, Power BI, and DAX to build an end-to-end analytics workflow, from data preparation and cleaning to interactive business intelligence dashboards.

The objective of this project is to demonstrate practical Data Analytics, SQL, Database Management, Data Visualization, and Business Intelligence skills using a real-world aviation dataset.

---

## Business Problem

Airline operations generate large volumes of flight data that can be used to improve operational efficiency and customer experience.

Key business questions addressed:

* What percentage of flights operate on time?
* Which airlines consistently perform better or worse?
* Which airports experience the highest delays?
* What are the primary causes of flight disruptions?
* How do delays vary across different months?
* What operational improvements could reduce delays?

---

## Dataset Information

| Attribute      | Value                                |
| -------------- | ------------------------------------ |
| Industry       | Aviation                             |
| Dataset Size   | 500,000 Flight Records               |
| Data Source    | U.S. Domestic Flight Operations Data |
| Storage Format | Parquet                              |
| Database       | PostgreSQL                           |

---

## Technology Stack

### Programming & Data Processing

* Python
* Pandas
* NumPy

### Database & Querying

* PostgreSQL
* SQL

### Business Intelligence

* Power BI
* DAX

### Data Storage

* Parquet

---

## Project Workflow

### 1. Data Understanding

* Loaded and explored raw flight datasets
* Reviewed schema, data types, and missing values
* Identified key operational metrics

### 2. Data Cleaning & Preparation

* Handled missing values
* Optimized data types
* Removed unnecessary columns
* Created analytical features

### 3. Database Integration

* Imported processed flight data into PostgreSQL
* Designed analytical SQL queries
* Performed KPI calculations and ranking analysis

### 4. Business Intelligence Development

* Created interactive Power BI dashboards
* Developed DAX measures and KPIs
* Implemented airline, airport, and delay analysis

---

## Dashboard Pages

### Page 1 — Flight Operations Overview

#### KPI Cards

* Total Flights
* On-Time Percentage
* Delay Percentage
* Average Arrival Delay
* Delayed Flights

#### Visualizations

* Flight Status Distribution
* Delay Category Analysis
* Monthly Arrival Delay Trend

#### Key Insights

* 80.5% of flights arrived on time
* 17.9% of flights experienced delays
* Average arrival delay was 4.62 minutes
* Delay levels peaked during June and December

---

### Page 2 — Airline and Airport Performance Dashboard

#### Airline Analysis

* Top 5 Best Performing Airlines
* Top 5 Worst Performing Airlines
* Airline Ranking Analysis

#### Airport Analysis

* Top 10 Most Delayed Airports

#### Delay Analysis

* Delay Reason Analysis
* Root Cause Investigation

#### Interactive Features

* Airline Filter
* Month Filter
* Flight Status Filter

---

## Key Findings

### Flight Performance

| Metric                | Value        |
| --------------------- | ------------ |
| Total Flights         | 500,000      |
| On-Time Flights       | 402,255      |
| Delayed Flights       | 89,475       |
| Cancelled Flights     | 7,095        |
| Diverted Flights      | 1,175        |
| On-Time Percentage    | 80.5%        |
| Delay Percentage      | 17.9%        |
| Average Arrival Delay | 4.62 Minutes |

---

### Best Performing Airlines

| Airline | Average Delay (Minutes) |
| ------- | ----------------------- |
| HA      | 0.64                    |
| 9E      | 1.01                    |
| UA      | 1.15                    |
| AS      | 1.93                    |
| WN      | 1.95                    |

---

### Worst Performing Airlines

| Airline | Average Delay (Minutes) |
| ------- | ----------------------- |
| EV      | 11.71                   |
| OH      | 10.66                   |
| FL      | 8.81                    |
| YV      | 6.48                    |
| AA      | 6.41                    |

---

### Most Delayed Airports

| Airport | Average Delay (Minutes) |
| ------- | ----------------------- |
| ADK     | 28.55                   |
| MOT     | 28.06                   |
| EYW     | 27.26                   |
| CEC     | 21.32                   |
| MLB     | 19.72                   |

---

### Primary Delay Causes

| Delay Cause   | Total Delay Minutes |
| ------------- | ------------------- |
| Late Aircraft | 1,820,170           |
| NAS           | 1,539,920           |
| Carrier       | 1,440,020           |
| Weather       | 259,342             |
| Security      | 6,317               |

---

## DAX Measures Implemented

This project includes several business-focused DAX measures:

* COUNTROWS()
* CALCULATE()
* DIVIDE()
* AVERAGE()
* RANKX()
* SWITCH()
* SELECTEDVALUE()

Examples:

```DAX
Total Flights =
COUNTROWS('public flight_operations')
```

```DAX
On Time Percentage =
DIVIDE(
    [On Time Flights],
    [Total Flights]
)
```

```DAX
Airline Delay Rank =
RANKX(
    ALL('public flight_operations'[OP_CARRIER]),
    [Average Airline Delay]
)
```

---

## Project Structure

```text
Aircraft-Maintenance-Analytics/
│
├── data/
│   └── processed/
│       └── flights_cleaned.parquet
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   └── 02_data_cleaning_and_preparation.ipynb
│
├── sql/
│   └── analysis_part_1.sql
│
├── dashboard/
│   ├── Aircraft_Maintenance_Dashboard.pbix
│   └── screenshots/
│       ├── Flight Operations Overview.png
│       └── Airline and Airport Performance Dashboard page.png
│
├── reports/
│   └── insights_summary.md
│
├── README.md
└── requirements.txt
```

---

## Business Recommendations

* Improve aircraft turnaround efficiency to reduce late aircraft delays.
* Monitor airports with consistently high average delays.
* Strengthen operational planning during peak travel months.
* Reduce carrier-related delays through process optimization.
* Use dashboard-driven monitoring for continuous operational improvement.

---

## Dashboard Preview

Add dashboard screenshots here:

### Flight Operations Overview

![Flight Operations Overview](dashboard/screenshots/Flight%20Operations%20Overview.png)

### Airline and Airport Performance Dashboard

![Airline and Airport Performance Dashboard](dashboard/screenshots/Airline%20and%20Airport%20Performance%20Dashboard%20page.png)

---

## Author

**Saiteja Puppala**

Data Analytics Portfolio Project

Tools Used:
Python • PostgreSQL • SQL • Power BI • DAX • Pandas
