# Uber NYC Trip Analysis (June - August 2024)
## Tech stack
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Microsoft PowerPoint](https://img.shields.io/badge/Microsoft_PowerPoint-B7472A?style=for-the-badge&logo=microsoft-powerpoint&logoColor=white)
![Canva](https://img.shields.io/badge/Canva-%2300C4CC.svg?style=for-the-badge&logo=Canva&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

**SQL Analysis Report**: [uber_trips_report.pdf](./sql/ubertrips_report.pdf)
## Project Background and Overview

Uber, founded in 2009, revolutionized transportation through its ride sharing platform. In this data, Uber facilitates **103,730 trips monthly** across 5 districts during June to August. This analysis was developed in collaboration with Uber's **Head of Marketing**, aligning with the [Stakeholder Requirements](./stakeholder.md) to:

1. Optimize pricing strategies using time/location demand patterns
2. Improve vehicle mix based on profitability analysis
3. Enhance promotional campaigns through payment method trends

**Key Alignment with Stakeholder Needs:**
- Focuses on the prioritized KPIs: **Total Trips, Trip Value, and Hourly Demand Patterns**
- Incorporates all key dimensions (**Vehicle Type, Payment Methods, Location IDs**)
- Delivers in **Power BI** as requested, with emphasis on peak value visualization

## Data Structure

This analysis uses Uber data representing **trip details and location data** from June - August 2024. Key datasets include:
<div align="center">
  <img src="https://github.com/user-attachments/assets/a9a38ef9-138e-4444-b0be-1a4963fcecd0" width="150"/>
</div>
### Uber Trip Details
- Contains records of **103,730 trips** including:
  - Timestamps (pickup/dropoff)
  - Passenger counts
  - Distances traveled
  - Fare amounts and surge pricing
  - Vehicle types (**UberX/Black/Green**)
  - Payment types (**Cash/Uber Pay**)
- *Analytical Value*: Enables calculation of operational KPIs (avg. trip duration, revenue/hr) and identification of peak demand periods.

### Location Mapping
- Precise geographic data linking location IDs to locations (e.g., "Upper East Side") and cities
- *Analytical Value*: Identifies high-demand cities and underserved locations for strategic positioning

![ubernyctripsdashboard1](https://github.com/user-attachments/assets/757aff6d-c69e-4c4c-9f51-8c492dff67be)
![ubernyctripsdashboard2](https://github.com/user-attachments/assets/ac7a0bce-10ae-4146-876b-4e7f222166ca)


## Executive Summary

### 1. Vehicle Optimization Opportunity
**Uber Green Profitability Gap:**
- Uber Green vehicles generate **$58.36/hour**, outperforming UberX ($56.01) by **4.2%** in revenue efficiency
- Despite this advantage, Uber Green represents only **14%** of total fleet utilization (14,498 trips vs. UberX's 38,744)
- **Recommended Action:**
  - Verify eligibility: Survey drivers to determine what % could switch to Green to maxmize Uber Green Vehicles.
  - Incentive: Offer **$5/hour bonus** to current Green drivers during 3 PM peak to boost capitalizes on existing 4.2% revenue advantage and targets the proven demand peak

### 2. Demand Concentration
**Peak Time & Day Analysis:**
- **3 PM hour** delivers **7.6% of daily trips** (7,900 rides) - the highest concentration
- **Sundays** drive **18.4% of weekly volume** (19,200 trips) - busiest day of the week
- **Recommended Action:**
  - Optimize driver supply: Offer **$3/hour surge bonus** (2:30-4:30 PM daily) + **$25 Sunday bonus** (10+ rides) to matches incentives to proven demand spike
  - Targeted promotions: Deploy **$2 off promo codes** (3-4 PM and Sunday 12-6 PM) to rewards participation on busiest days and aligns with rider demand patterns

### 3. Geographic Revenue Concentration
**High-Value Pickup Zones:**
- **Manhattan dominates** with **$0.92M** in trip value (3x Queens, 4x Brooklyn)
- **Staten Island/Bronx**: <$0.08M combined (minimal activity)
- **Recommended Actions:**
  - Prioritize fleet in **Manhattan/Queens/Brooklyn** during peaks due to the high average trip values
  - Offer **$5 pickup bonuses** in Bronx/Staten Island to boost activity in underserved areas


## Insights Deep Dive

### Overall/KPI Performance
**June 1 - August 30, 2024:**
- **103.73k trips** ($1.55M total value)
- **$14.98 avg. trip value**
- **348.93k miles** total distance (3.36 miles/trip)
- **15.86 min avg. trip duration**

<div align="center">
  <img src="https://github.com/user-attachments/assets/d3cd4b6c-fd54-4c0b-8cd3-eb5ec3baa30e"/>
</div>

### Trips by Pickup Hour
- **3 PM peak**: 7.62% of daily trips
- **Day trips (6AM-5PM)**: 72.8% of volume
- **Night trips (12-4AM)**: 3.2% of volume but 29.29% of value ($455k)
- **Recommendation:**
  - Increase **2:30-4:30 PM driver availability**
  - Launch **$20 night shift bonus** (8PM-2AM, 8+ trips)

<div align="center">
  <img src="https://github.com/user-attachments/assets/ff32a057-9d4f-448f-8491-8d2f627858c4"/>
</div>

### Trips by Day of Week
- **Sunday**: 19.2k trips (18.4%)
- **Friday**: 9.3k trips (8.9%)
- **Weekends**: 36.5% of all trips (+14% vs weekdays)
- **Recommendation:**
  - **$25 weekend driver bonuses** (12+ rides)
  - **10% rider discounts** (weekends 10AM-6PM)

<div align="center">
  <img src="https://github.com/user-attachments/assets/89dafbe0-ab9b-4bb0-af68-f5bd032ef83b"/>
</div>

### Total Bookings by Payment Type
- **Uber Pay**: 69.53k trips (67.03%)
- **Google Pay**: 180 trips (0.17%)
- **Recommendation:**
  - Promote **Uber Pay perks** (loyalty/cashback)
  - Consider retiring **Google Pay**

<div align="center">
  <img src="https://github.com/user-attachments/assets/866bb925-a5f8-4106-aae2-46c2640e15d8"/>
</div>

### Total Trip Volume by Pickup Location
- **Penn Station/Madison Sq West**: 4,475 pickups
- **Top routes**: 4.8% of total volume
- **Recommendation:**
  - Create **dedicated driver zones**
  - Test **flat-rate pricing** for common routes

<div align="center">
  <img src="https://github.com/user-attachments/assets/06a4836c-1611-4ad7-9fa7-53197f5f3a7b"/>
</div>

### Total Trip Value by City
- **Manhattan**: $0.92M pickups, $0.81M drop-offs
- **Queens**: $0.29M | **Brooklyn**: $0.24M
- **Bronx/Staten Island**: <$0.08M combined
- **Recommendation:**
  - Concentrate fleet in **Manhattan peaks**
  - **$5 pickup bonuses** in underserved areas
 
## Summary of Recommendations

### Fleet Operations Team
1. **Green Vehicle Conversion**
   - **$5/hour bonus** for Uber Green drivers during 3 PM peak
   - Capitalizes on Green's proven 4.2% higher revenue efficiency during proven demand spike

2. **Peak Hour Coverage**
   - Implement **$3/hour surge bonuses** (2:30-4:30 PM daily)
   - Launch **$20 night shift bonuses** (8 PM-2 AM, 8+ trips)
   - Targets the 7,900 trips/hour occurring at 3 PM and the low frequency of night rides

3. **Geographic Optimization**
   - Prioritize **Manhattan/Queens/Brooklyn** during peak hours
   - Implement **$5 pickup bonuses** in Bronx/Staten Island
   - Manhattan/Queens/Brooklyn zone generates peak revenue while the pickup incentive helps to boost revenue in underperforming areas.

### Marketing Team
1. **Demand** 
   - Deploy **$2 promo codes** for:
     - 3-4 PM weekday trips
     - Sunday afternoons (12-6 PM)
   - Offer **10% weekend discounts** (10 AM-6 PM)
   - Targets the highest demand day and time to increase frequency of rides for more opportunities to increase overall revenue.

2. **Payment Method Strategy**
   - Promote **Uber Pay-exclusive perks** (loyalty rewards/cashback)
   - Remove **Google Pay** if usage stays below 1% after 3 months
   - Increases resources to boost Uber Pay's 67% usage.

### Marketplace Operations
1. **High Volume Locations**
   - Create **dedicated driver zones** at Penn Station (3-6 PM)
   - Test **flat-rate pricing** for top 5 routes (4.8% of volume)


