# Aircraft Maintenance & Flight Operations Analytics Dashboard
## Insights Summary Report

**Project Type:** Data Analytics & Business Intelligence  
**Dataset Size:** 500,000 Flight Records  
**Tools Used:** Python, Pandas, PostgreSQL, SQL, Power BI, DAX  
**Report Prepared For:** Airline Operations Management & Business Stakeholders  

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Project Objectives](#2-project-objectives)
3. [Dashboard Overview](#3-dashboard-overview)
4. [KPI Summary](#4-kpi-summary)
5. [Flight Status Analysis](#5-flight-status-analysis)
6. [Delay Category Analysis](#6-delay-category-analysis)
7. [Monthly Delay Trend Analysis](#7-monthly-delay-trend-analysis)
8. [Airline Performance Analysis](#8-airline-performance-analysis)
9. [Airport Delay Analysis](#9-airport-delay-analysis)
10. [Delay Reason Analysis](#10-delay-reason-analysis)
11. [Key Business Insights](#11-key-business-insights)
12. [Strategic Recommendations](#12-strategic-recommendations)
13. [Conclusion](#13-conclusion)

---

## 1. Executive Summary

This report presents the findings of a comprehensive data analytics initiative conducted on 500,000 airline flight records. The analysis was designed to identify operational inefficiencies, evaluate carrier and airport performance, and provide data-driven recommendations to reduce delay rates and improve service reliability.

Across the full dataset, 80.5% of flights operated on time, while 17.9% experienced delays and 1.4% were cancelled. The average arrival delay across all flights stood at 4.62 minutes, which, while seemingly modest in aggregate, masks significant variability across individual carriers, airports, and calendar months.

The analysis reveals that late aircraft propagation is the single largest contributor to total delay minutes, accounting for approximately 36% of all delay time. Regional airports and low-cost or regional carriers consistently underperform compared to major network carriers. Seasonal patterns indicate that December, June, and July represent the highest-risk months for operational disruption.

These findings present management with a clear, evidence-based foundation for targeted investment in ground operations, carrier contract evaluation, and network capacity planning.

---

## 2. Project Objectives

The objectives of this analytics project were as follows:

- Quantify overall flight punctuality and operational reliability across 500,000 records.
- Identify the carriers and airports contributing disproportionately to system-wide delays.
- Analyze the root causes of delay minutes by delay type to prioritize operational intervention.
- Detect seasonal and monthly patterns in arrival delay behavior.
- Deliver an interactive Power BI dashboard enabling management to apply dynamic filters by airline, month, and flight status.
- Produce actionable, data-supported recommendations for operations management.

---

## 3. Dashboard Overview

The project deliverable includes a two-page interactive Power BI dashboard designed for operational decision-making.

**Page 1 — Flight Operations Overview**

The first dashboard page establishes high-level situational awareness. Five KPI cards at the top of the page present core operational metrics at a glance: total flights, on-time percentage, delay percentage, average arrival delay, and the absolute count of delayed flights. Below the KPI row, a donut chart displays the proportional distribution of flight statuses, confirming that on-time performance dominates the distribution but that delayed flights constitute a statistically significant segment. A horizontal bar chart breaks delays into defined severity categories, allowing management to assess the proportion of minor, moderate, and severe delays. A line chart at the bottom of the page traces the monthly average arrival delay across the calendar year, revealing clear seasonal inflection points — notably a pronounced deterioration in June and a sharp peak in December, contrasted with near-zero delay averages in September and a negative average in November, indicating consistent early arrivals during that period.

**Page 2 — Airline and Airport Performance Dashboard**

The second page provides granular, comparative performance analysis. Two ranked tables display the five best and five worst performing carriers by average delay, offering management an immediate view of the performance gap between top and bottom carriers. A horizontal bar chart ranks the ten most delayed airports by average delay, highlighting that certain regional airports operate with structurally elevated delay profiles well above the system average. A second bar chart disaggregates total delay minutes by cause — late aircraft, NAS, carrier, weather, and security — making clear where intervention would yield the greatest reduction in delay time. Three interactive filter panels allow users to slice all visualizations by airline, month, and flight status, enabling ad-hoc analysis without requiring separate reports.

Together, the two pages provide a complete view from system-level summary to granular root-cause analysis.

---

## 4. KPI Summary

The following table summarizes the primary key performance indicators derived from the dataset.

| KPI | Value |
|---|---|
| Total Flights | 500,000 |
| On-Time Flights | 402,255 |
| Delayed Flights | 89,475 |
| Cancelled Flights | 7,095 |
| Diverted Flights | 1,175 |
| On-Time Percentage | 80.5% |
| Delay Percentage | 17.9% |
| Average Arrival Delay (all flights) | 4.62 minutes |

The on-time rate of 80.5% is within the range typically observed across the U.S. domestic aviation network, but falls short of the 85%+ benchmark that leading carriers use as an internal target. The absolute count of 89,475 delayed flights represents a substantial operational and reputational exposure, particularly when compound effects on connecting itineraries and passenger satisfaction are considered.

---

## 5. Flight Status Analysis

Flight status across the 500,000-record dataset was categorized into four states: On Time, Delayed, Cancelled, and Diverted.

| Flight Status | Count | Percentage |
|---|---|---|
| On Time | 402,255 | 80.45% |
| Delayed | 89,475 | 17.90% |
| Cancelled | 7,095 | 1.42% |
| Diverted | 1,175 | 0.24% |

The on-time segment accounts for four in five flights, which reflects baseline operational competence. However, the delayed segment at 17.9% is operationally significant. When compounded across an annualized flight schedule, a delay rate of this magnitude translates into tens of thousands of disrupted passenger itineraries, increased crew costs, and elevated gate utilization.

The cancellation rate of 1.42% warrants monitoring. Cancellations carry a disproportionately high cost relative to delays — they generate full rebooking obligations, passenger compensation exposure, and in hub-and-spoke networks, cascading disruptions to downstream operations.

Diversions at 0.24% represent relatively rare but operationally complex events. Each diversion generates significant unplanned ground handling, fuel, and crew repositioning costs.

---

## 6. Delay Category Analysis

Delayed flights were further classified by severity to provide a structured view of operational impact.

| Delay Category | Flight Count |
|---|---|
| On Time | 402,255 |
| Minor Delay (1–15 min) | 63,534 |
| Moderate Delay (16–45 min) | 22,956 |
| Severe Delay (45+ min) | 2,985 |
| Not Available | 8,270 |

Minor delays account for the largest share of the delayed population (63,534 flights), representing situations where operational recovery is typically feasible within the same rotation. These delays, while numerous, have a lower per-incident cost impact and are generally absorbable within schedule buffers.

Moderate delays (22,956 flights) carry greater operational consequence. Flights delayed by 16 to 45 minutes frequently cause missed connections, require crew schedule adjustments, and increase gate conflict risk during peak periods.

Severe delays (2,985 flights) represent the highest-impact category despite their smaller absolute count. Each severe delay event typically triggers downstream schedule disruption, passenger compensation obligations, and regulatory reporting requirements. The 2,985 severe delay events in this dataset merit priority attention from network operations control.

The 8,270 records classified as Not Available indicate a data quality gap that should be addressed at the source system level to ensure complete categorization in future reporting cycles.

---

## 7. Monthly Delay Trend Analysis

The monthly trend in average arrival delay reveals clear and actionable seasonal patterns.

| Month | Average Arrival Delay (minutes) |
|---|---|
| January | 5.20 |
| February | 1.88 |
| March | 5.01 |
| April | 6.34 |
| May | 4.44 |
| June | 8.51 |
| July | 7.37 |
| August | 5.29 |
| September | 0.01 |
| November | -3.60 |
| December | 9.38 |

Several observations warrant operational attention:

**December** records the highest average arrival delay at 9.38 minutes, driven by a combination of holiday-period demand surges, reduced schedule slack, and increased weather exposure at northern stations. This pattern is consistent with industry-wide observations and should inform capacity and staffing planning for Q4.

**June and July** represent the peak of the summer travel season, with averages of 8.51 and 7.37 minutes respectively. Thunderstorm activity across hub airports during these months is a principal driver of NAS and late aircraft delays.

**September** and **November** exhibit substantially lower delay averages (0.01 and -3.60 minutes respectively). The negative average in November reflects a meaningful proportion of early arrivals, suggesting that schedule padding added for winter preparation in October and November exceeds actual operational needs during that period. This represents an opportunity to recover schedule efficiency.

**February** also performs relatively well at 1.88 minutes, likely reflecting a post-holiday demand trough combined with limited severe weather events in the dataset period.

The visible pattern in the dashboard's monthly trend line — a sharp rise peaking in June, declining through September, and then a steep escalation in December — provides a reliable seasonal template for resource planning.

---

## 8. Airline Performance Analysis

Carrier performance was evaluated by average arrival delay. The resulting rankings expose a wide performance disparity across the carrier set.

### Best Performing Carriers

| Rank | Carrier Code | Average Delay (minutes) |
|---|---|---|
| 1 | HA | 0.64 |
| 2 | 9E | 1.01 |
| 3 | UA | 1.15 |
| 4 | AS | 1.93 |
| 5 | WN | 1.95 |

The five best-performing carriers maintain average delays well below 2 minutes. HA (Hawaiian Airlines) leads the ranking with an average delay of just 0.64 minutes, reflecting the operational advantages of a predominantly intra-island route network with predictable weather and minimal connecting traffic complexity. UA and AS demonstrate that major network carriers can achieve top-tier punctuality through disciplined schedule management and aircraft utilization practices.

### Worst Performing Carriers

| Rank | Carrier Code | Average Delay (minutes) |
|---|---|---|
| 15 | AA | 6.41 |
| 16 | YV | 6.48 |
| 17 | FL | 8.81 |
| 18 | OH | 10.66 |
| 19 | EV | 11.71 |

The performance gap between the best and worst carriers is operationally striking. EV (ExpressJet), ranked last, records an average delay of 11.71 minutes — more than 18 times the average delay of the leading carrier HA. OH (PSA Airlines) and FL (AirTran) also significantly underperform, with averages above 8 minutes.

Regional carriers dominate the bottom of the rankings, reflecting structural challenges including older fleet types, higher dependency on mainline carrier schedules, and limited operational buffer capacity. The appearance of AA (American Airlines) at rank 15 with a 6.41-minute average is notable given its network scale, and warrants a deeper investigation into hub-specific operational performance.

---

## 9. Airport Delay Analysis

Airport-level analysis identified ten origins with the highest average departure delays. These locations represent geographic concentrations of operational risk.

| Airport Code | Average Airport Delay (minutes) |
|---|---|
| ADK | 28.55 |
| MOT | 28.06 |
| EYW | 27.26 |
| CEC | 21.32 |
| MLB | 19.72 |
| CDV | 19.54 |
| PSG | 18.93 |
| CMX | 17.64 |
| YAK | 16.79 |
| OTH | 15.81 |

The airports appearing in this ranking are predominantly small regional facilities — Adak Island (ADK), Minot (MOT), Key West (EYW), Crescent City (CEC), Melbourne Florida (MLB), Cordova Alaska (CDV), Petersburg Alaska (PSG), Hancock Michigan (CMX), Yakutat Alaska (YAK), and North Bend Oregon (OTH).

The prevalence of Alaskan airports (ADK, CDV, PSG, YAK) reflects the structural operational challenges of remote aviation: limited infrastructure, adverse weather conditions, single-runway constraints, and restricted maintenance support. These airports operate with minimal schedule redundancy, meaning that even minor disruptions cascade into significant average delays.

The presence of Key West (EYW) and Melbourne (MLB) — both in Florida — among the top delayed airports points to weather-driven disruption patterns associated with convective activity and, in the case of EYW, constrained airspace in the Florida Keys corridor.

Management should note that the average delays at the top airports (25–29 minutes) are approximately five to six times the system-wide average arrival delay of 4.62 minutes. This concentration of delay in specific locations suggests that targeted infrastructure or scheduling interventions at these airports could yield system-wide improvement.

---

## 10. Delay Reason Analysis

Total delay minutes were aggregated by delay cause across the dataset to identify the primary drivers of system-wide delay time.

| Delay Cause | Total Delay Minutes | Percentage of Total |
|---|---|---|
| Late Aircraft | 1,820,170 | 35.8% |
| NAS (National Airspace System) | 1,539,920 | 30.3% |
| Carrier | 1,440,020 | 28.3% |
| Weather | 259,342 | 5.1% |
| Security | 6,317 | 0.1% |

**Late Aircraft Delay** is the dominant delay cause, accounting for 1,820,170 minutes (35.8% of total). This category reflects delays caused by the late arrival of an inbound aircraft that was itself delayed on a prior segment. Late aircraft delays are consequential precisely because they are propagating — a delay generated at one point in a rotation cascades into subsequent flights on the same aircraft tail. Reducing late aircraft delay requires addressing root causes earlier in the rotation chain.

**NAS Delay** contributes 1,539,920 minutes (30.3%). NAS delays originate from congestion in the National Airspace System, including air traffic control decisions, ground stops, and airspace management restrictions. While individual airlines have limited direct control over ATC decisions, they can mitigate exposure through route diversification, schedule timing adjustments, and proactive communication with traffic management units.

**Carrier Delay** accounts for 1,440,020 minutes (28.3%) and encompasses delays attributable to airline operations: maintenance activities, crew availability, fueling, baggage loading, and other controllable ground processes. This is the category most directly within airline management's sphere of influence. A 10% reduction in carrier delay minutes alone would remove approximately 144,000 minutes of delay from the system.

**Weather Delay** contributes 259,342 minutes (5.1%). Though weather is an external, largely uncontrollable factor, airlines can reduce weather delay exposure through predictive scheduling, proactive cancellation decisions ahead of severe weather events, and investments in aircraft de-icing capacity.

**Security Delay** is negligible at 6,317 minutes (0.1%), indicating that checkpoint capacity at the airports in this dataset is not a systemic operational constraint.

---

## 11. Key Business Insights

The following insights represent the most significant findings with direct relevance to operational and strategic decision-making.

**Insight 1 — The System's Delay Profile is Driven by a Small Number of High-Impact Variables**

Three delay types — Late Aircraft, NAS, and Carrier — account for 94.4% of all delay minutes in the system. Weather and Security together contribute less than 6%. This concentration means that targeted operational investment in aircraft utilization management and carrier process improvement would address the vast majority of delay exposure.

**Insight 2 — Late Aircraft Propagation is the Defining Operational Challenge**

Late aircraft delay is the single largest delay category by total minutes and is structurally linked to all other delay types through rotation propagation. An initial NAS or Carrier delay early in a day's operations can generate late aircraft delays across multiple subsequent flights on the same tail. Operational recovery strategies, spare aircraft positioning, and buffer time management are all relevant levers.

**Insight 3 — The Performance Gap Between Best and Worst Carriers is Operationally Material**

The 11.07-minute gap in average delay between the best carrier (HA at 0.64 minutes) and the worst (EV at 11.71 minutes) is not a marginal statistical difference — it represents a fundamentally different operational posture. Regional carrier performance in particular merits structured review, either through contractual performance incentives or operational support programs.

**Insight 4 — Regional Airports Concentrate Disproportionate Delay Risk**

The ten most delayed airports are exclusively regional facilities, and seven of them generate average delays exceeding 15 minutes — more than three times the system average. The Alaskan airport cluster (ADK, CDV, PSG, YAK) presents a structurally distinct challenge driven by geography, infrastructure limitations, and weather exposure that differs from continental network delays.

**Insight 5 — Seasonality Creates Predictable Risk Windows**

December and June represent the two highest-delay months, together with July. These periods are predictable, recur annually, and should be treated as capacity and staffing planning triggers rather than operational surprises. Conversely, September and November represent structural low-delay periods where schedule efficiency gains may be recoverable.

**Insight 6 — The Cancellation and Severe Delay Segment Warrants Priority Review**

While on-time performance appears adequate at 80.5%, the combination of 7,095 cancellations and 2,985 severe delays (45+ minutes) represents approximately 10,000 high-impact disruption events. These events carry outsized cost implications and passenger experience consequences relative to minor delays, and their root causes merit separate investigation.

---

## 12. Strategic Recommendations

Based on the findings presented in this report, the following recommendations are submitted for management consideration.

**Recommendation 1 — Implement Aircraft Rotation Recovery Protocols**

Given that late aircraft delay accounts for 35.8% of total delay minutes, operations control should establish formal rotation recovery protocols. These should include predefined thresholds for spare aircraft deployment, crew repositioning decisions, and proactive passenger rebooking triggers when inbound aircraft delays exceed defined buffers. Reducing late aircraft propagation by 15% would remove approximately 273,000 delay minutes from the system.

**Recommendation 2 — Establish Carrier Performance Benchmarks and Review Cycles**

The performance data clearly demonstrates that carrier identity is a predictor of delay exposure. Management should establish a formal carrier performance review process, setting minimum on-time and maximum average delay thresholds. Carriers persistently below performance benchmarks — particularly regional partners — should be subject to operational audit and, where applicable, contractual performance incentive structures.

**Recommendation 3 — Target Controllable Carrier Delay Through Ground Process Improvement**

Carrier delay contributes 28.3% of total delay minutes and is the category most directly within airline management's control. A structured operational improvement program targeting turnaround time, maintenance readiness, and crew scheduling efficiency should be scoped and prioritized. Ground process time-motion analysis at the highest-delay stations would identify the most actionable targets.

**Recommendation 4 — Develop a Seasonal Capacity and Staffing Plan**

The monthly delay trend data supports the development of a formalized seasonal operations plan. Specifically:
- December and June should be treated as elevated-risk periods requiring additional staffing, maintenance coverage, and schedule buffer.
- September and November schedule padding should be reviewed for potential efficiency recovery.
- A rolling 12-month delay forecast model, updated quarterly, would provide operations management with advance visibility into risk periods.

**Recommendation 5 — Conduct Infrastructure and Scheduling Review at High-Delay Airports**

The ten most delayed airports should be subject to a structured operational review. For Alaskan and remote locations, the review should assess whether current schedule assumptions adequately reflect realistic operating conditions, and whether maintenance support levels are sufficient. For continental high-delay airports such as EYW and MLB, weather mitigation planning and schedule buffer adequacy should be evaluated.

**Recommendation 6 — Resolve Data Quality Gaps in Delay Categorization**

The 8,270 records classified as "Not Available" in the delay category dimension represent an unresolved data quality gap. These records cannot be analyzed for root cause, which reduces the accuracy of all delay-type reporting. A data governance initiative should be initiated to trace the origin of uncategorized records and implement validation rules at the source system level.

**Recommendation 7 — Leverage the Interactive Dashboard for Monthly Operational Reviews**

The Power BI dashboard developed in this project provides management with the filtering capability to isolate performance by carrier, month, and flight status. It is recommended that this dashboard be incorporated into monthly operations review meetings, enabling management to monitor trend movements and respond to emerging performance issues before they become embedded patterns.

---

## 13. Conclusion

This analytics project processed 500,000 flight records to produce a structured, evidence-based picture of airline and airport operational performance. The findings confirm that while the network operates at an 80.5% on-time rate — an acceptable baseline — significant and addressable inefficiencies exist across carrier performance, delay cause distribution, seasonal patterns, and specific airport locations.

The analysis identifies late aircraft propagation, controllable carrier delay, and regional carrier underperformance as the three priority areas for operational intervention. These areas are both material in their impact on total delay minutes and, to varying degrees, actionable through management decision-making.

The two-page Power BI dashboard delivers an interactive, filterable reporting environment that translates the underlying data into operational intelligence. When used consistently in management review cycles, it provides the ongoing visibility required to monitor performance trends, identify deterioration early, and evaluate the effectiveness of corrective actions over time.

The recommendations contained in this report are intended to be sequenced and prioritized based on operational feasibility and expected return. Individually, each recommendation addresses a specific, quantified gap in current performance. Collectively, they represent a pathway to meaningfully improving on-time performance, reducing delay minute totals, and delivering a more reliable operational product for passengers and stakeholders.

---

*Report generated as part of the Aircraft Maintenance & Flight Operations Analytics Dashboard portfolio project.*  
*Dataset: 500,000 U.S. domestic airline flight records.*  
*Tools: Python, Pandas, PostgreSQL, SQL, Power BI, DAX.*
