# uber-trip-demand-forecasting
Forecasting Uber daily trip demand and analyzing base-level performance using Python, SQL, and Machine Learning.

---

## Uber Trip Demand Forecasting using Machine Learning & AWS

**Author:** Deepika Priya K

## Executive Summary

This project builds an end-to-end **Uber trip demand forecasting system** using historical trip data.
The solution combines **data analytics, machine learning, cloud storage (AWS DynamoDB), and interactive dashboards** to predict daily demand, evaluate forecast accuracy, and support operational decision-making.

The final output includes a **production-ready forecasting pipeline** and a **Tableau operational performance dashboard**.

---

## Business Problem & Objective

Uber operates across multiple dispatching bases where** trip demand varies daily** due to time, weekday/weekend patterns, and operational constraints.

Key business challenges:

- Predict daily trip demand accurately
- Avoid under-supply or over-supply of vehicles
- Improve fleet utilization efficiency
- Support pricing and operational planning

**Objective:**
Forecast daily trip demand per dispatching base and compare predictions with actual demand to assess model performance.

---

## Methodology

The project follows a structured, real-world analytics workflow:

**1. Data Understanding & Cleaning**

- Cleaned raw trip data
- Created date-based features (day, week, weekend)

**2. Feature Engineering**

- Lag features (Trips Lag 1, 7, 14)
- Rolling statistics (7-day and 14-day mean & standard deviation)
- Operational metrics like trips per vehicle

**3. Machine Learning Modeling**

- Trained regression models for daily trip forecasting
- Evaluated performance using MAE and accuracy metrics
- Selected the best-performing model

**4. Cloud Integration (AWS)**

- Stored actual and predicted results in **AWS DynamoDB**
- Enabled fast querying using partition & sort keys

**5. Visualization & Reporting**

- Built a Tableau dashboard for business users
- Compared actual vs predicted demand and errors

---

## Skills & Tools Used

**Programming & Analytics**

- Python (Pandas, NumPy, Scikit-learn)
- SQL (exploratory and validation queries)

**Machine Learning**

- Time-series feature engineering
- Regression modeling
- Model evaluation (MAE, accuracy)

**Cloud & Data Engineering**

- AWS DynamoDB (NoSQL)
- Boto3 for cloud interaction
- Cloud-based storage of predictions

**Visualization**

- Tableau (KPIs, time series, error analysis dashboards)

---

## Key Insights

- Predicted trips closely follow actual demand trends over time.
- The model achieves **~99% forecast accuracy** with low average daily error.
- Weekday demand is significantly higher than weekend demand.
- Trips per vehicle remain stable, indicating efficient fleet utilization.
- Error spikes occur on a few isolated days, suggesting short-term demand anomalies rather than model issues.

## 📊 Actual vs Predicted Trips (Time Series)
<p align="centre">
<img src="https://github.com/deepikapriyak30/uber-trip-demand-forecasting/blob/main/image/Actual_Predicted_Trips_Time_Series.png?raw=true" width="600" height="500">
</p>

---

## Business Recommendations

- Use forecasts to **optimize vehicle allocation** by dispatching base.
- Increase fleet availability during high weekday demand.
- Monitor days with high forecast error for special events or anomalies.
- Integrate forecasts into pricing and surge planning strategies.
- Use trips-per-vehicle metrics to improve operational efficiency.

---

## Next Steps

- Automate the pipeline with scheduled daily model runs
- Integrate real-time data ingestion
- Deploy dashboards for operations teams
- Add alerting for high forecast error days
- Extend forecasting to hourly or base-level granularity

---

## Dataset Source

This project uses a **public Uber trip dataset** for learning and demonstration purposes only.

_I do not own the dataset. Full credit goes to the original data providers._
