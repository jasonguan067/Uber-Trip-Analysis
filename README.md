# Uber NYC Trip Analysis (June - August 2024)


## Project Background and Overview
Uber, founded in 2009, revolutionized urban transportation through its ride-sharing platform. In NYC, Uber facilitates **103,730 trips monthly** across 5 boroughs. This analysis was developed in collaboration with Uber's **Head of Marketing**, aligning with the [Stakeholder Requirements](./stakeholder.md) to:

1. Optimize pricing strategies using time/location demand patterns
2. Improve vehicle mix based on profitability analysis
3. Enhance promotional campaigns through payment method trends

**Key Alignment with Stakeholder Needs:**
- Focuses on the prioritized KPIs: Total Trips, Trip Value, and Hourly Demand Patterns
- Incorporates all key dimensions (Vehicle Type, Payment Methods, Location IDs)
- Delivers in Power BI as requested, with emphasis on peak value visualization


### Data Structure

This analysis uses Uber data representing **trip details and location data** from June - August 2024. Key datasets include:

### Uber Trip Details 
   - Contains records of 103,730 trips including timestamps (pickup/dropoff), passenger counts, distances traveled, fare amounts, and surge pricing, vehicle types (UberX/Black/Green), and payment types (Cash/Uber Pay)
   - *Analytical Value*: Enables calculation of operational KPIs (avg. trip duration, revenue/hr) and identification of peak demand periods.

**Location Mapping**:
   - Precise geographic data linking location IDs to locations (e.g., "Upper East Side") and cities .
   - *Analytical Value*: Identifies high-demand cities and underserved locations for strategic positioning.


 ![ubererddiagram](https://github.com/user-attachments/assets/a9a38ef9-138e-4444-b0be-1a4963fcecd0)



### Executive Summary

1. Fleet Optimization Opportunity
Uber Green Profitability Gap:
Uber Green vehicles generate $58.36/hour, outperforming UberX ($56.01) by 4.2% in revenue efficiency.
Despite this advantage, Uber Green represents only 14% of total fleet utilization (14,498 trips vs. UberX’s 38,744).
Recommended Action:
Verify eligibility: Survey drivers to determine what % could switch to Green
Pilot incentive: Offer $5/hour bonus to current Green drivers during 3 PM peak
Track conversion: Measure if higher earnings attract more Green signups

2. Demand Concentration
Peak Time & Day Analysis
3 PM hour delivers 7.6% of daily trips (7,900 rides) – the highest concentration
Sundays drive 18.4% of weekly volume (19,200 trips) – busiest day of the week.
Recommended Action:
Optimize driver supply: Offer a $3/hour surge bonus for drivers active between 2:30 PM–4:30 PM daily, and a $25 Sunday shift completion bonus for drivers who complete 10+ rides on Sundays. Targeted promotions: Deploy $2 off promo codes for riders booking trips between 3–4 PM and on Sunday afternoons (12–6 PM) to stimulate demand and reduce wait times during peak congestion.

4. Geographic Revenue Concentration
High-Value Pickup Zones
Manhattan dominates with $0.92M in trip value, over 3x higher than Queens ($0.29M) and nearly 4x Brooklyn ($0.24M).
Staten Island and The Bronx together contribute less than $0.08M, indicating minimal pickup activity.
Recommended Actions:
Driver deployment: Prioritize fleet availability in Manhattan, Queens, and Brooklyn, especially during peak hours.
Localized incentives: Offer pickup bonuses for rides initiated in low-activity areas (e.g., $5 bonus for 3+ trips starting in The Bronx or Staten Island) to balance geographic coverage.
Marketing focus: Tailor promotions and rider acquisition campaigns to high-value zones like Manhattan to further amplify revenue concentration.



![image](https://github.com/user-attachments/assets/ae53d1a7-57ca-4a99-a35c-2bfb39229d80)

### Insights Deep Dive: 
Overall/KPI Performance:
In this NYC Uber dataset covering 6/1/2024 – 8/30/2024, Uber completed 103.73k trips, generating $1.55M in total trip value with an average trip value of $14.98.
Total trip distance: 348.93k miles
Average trip distance: 3.36 miles
Average trip duration: 15.86 minutes

Trips by Pickup Hour: 
3 PM (Hour 15) delivers 7.62% of daily trips, the highest hourly concentration.
Day trips (6 AM–5 PM) make up 72.8% of trips (75.5k), while early morning trips (12–4 AM) account for just 3.2%.
Despite lower volume, night trips generate $455k (29.29%) in value, while day trips contribute $1.1M (70.71%).

Recommendation:
Increase driver availability between 2:30 PM – 4:30 PM, especially on high-demand weekdays.
Launch a night shift bonus program to improve coverage in lower-supply but high-value timeframes (e.g., $20 bonus for completing 8+ trips between 8 PM–2 AM).

Trips by Day of Week:
Sunday leads with 19.2k trips (18.4%), while Friday trails with 9.3k (8.9%).
Weekends account for 36.5% of all trips and drive 14% more volume than the average weekday.

Recommendation:
Offer weekend-specific driver bonuses (e.g., $25 for completing 12+ rides on Saturday or Sunday).
Run weekend promotions for riders—such as a 10% discount on rides between 10 AM–6 PM on weekends to reinforce habit-based usage.

Total Bookings by Payment Type
Uber Pay dominates with 69.53k trips (67.03%), far ahead of alternatives like Google Pay (180 trips, 0.17%).
Uber Pay also leads in total booking value and distance traveled by payment type.

Recommendation:
Promote Uber Pay-exclusive perks, such as loyalty rewards or cashback offers.
Consider retiring low-use payment options or integrating better in-app payment education to boost primary method usage.


Vehicle Type: Uber x leads trip count 38744 ( divide by total) yet uber green makes 58.36 per hour compared to uber x 56.01 despite being 14498 trip count( the lowest!) 
Recommendaiton:

Total trip by pickup location: penn station / madison sq west has 4475 total trips by pickup location and upper east side north has 1072 dropoff location "Penn Station ↔ Upper East Side (4,475 pickups) and NV ↔ NV (487 trips) represent 4.8% of total volume—ideal for dedicated driver zones."

total trip value by pick up city, manhattan dominates with .92M total trup value by pickup city. drop off city leads with manhattan at .81M. (key insight)

total trips by route NV - NV 487













Insights Deep Dive
-TITLE, INISGHT, GOAL
need screenshots to show data labels clearly
try to have more insights by time

Recommendations 
should be tied to insights
"given the upward trends in ___, consider reallocating funds for ___"

"insights geared towards the marketing team to better allocate marketing funds for next few years"
