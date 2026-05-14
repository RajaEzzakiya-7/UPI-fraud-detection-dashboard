🚨 UPI Fraud Detection & Risk Analytics Dashboard
📌 About This Project

This project focuses on analyzing UPI and digital payment transactions to identify suspicious transaction behavior using data analytics, anomaly detection, and machine learning techniques.

The project combines SQL, Python, Machine Learning, and Power BI to detect unusual transaction patterns, analyze fraud indicators, and build an interactive fraud monitoring dashboard similar to systems used in real-world financial platforms.

The analysis is based on transaction behavior, device anomalies, authentication activity, OTP request frequency, transaction velocity, and geographic inconsistencies.

🎯 Project Goal
Detect suspicious UPI transactions using anomaly detection
Analyze fraud behavior patterns across transaction types
Identify high-risk transactions using machine learning
Build an interactive fraud analytics dashboard
Generate business-friendly insights for fraud monitoring teams


📊 Dataset Overview
Type: Synthetic but realistic UPI transaction dataset
Domain: Financial Transactions & Fraud Analytics
Target Column: is_fraud
Machine Learning: Isolation Forest & Logistic Regression
Data Nature: Transaction behavior, anomaly indicators, authentication patterns



⚠️ This project focuses on fraud detection and suspicious activity analysis using transaction behavior patterns.

🧾 Columns Used in Analysis
Transaction Information
transaction_id
user_id
merchant_id
amount
timestamp
transaction_type
Device & Network Indicators
device_id
ip_address
location
unusual_device_flag
unusual_ip_flag
unusual_location_flag
Authentication & Security
authentication_attempts
failed_transaction_count
otp_request_frequency
authorization_method
Behavioral Features
transaction_velocity
session_duration
transaction_amount_vs_sender_history
geographic_disparity
Machine Learning Output
anomaly
is_fraud
Fraud Labels
0 → Legit Transaction
1 → Fraudulent Transaction
Anomaly Detection Output
1 → Normal
-1 → Suspicious / Anomaly


⚠️ Important Notes
Isolation Forest was used for anomaly detection
Logistic Regression was used for fraud prediction
Fraud patterns were analyzed using behavioral indicators
Dashboard insights were generated from cleaned and validated data
Focus was placed on business insights and fraud monitoring workflows
🛠 Tools & Technologies
SQL
MySQL
Data filtering
Aggregation queries
Fraud analysis queries
Python
Libraries Used
Pandas
NumPy
Matplotlib
Seaborn
Scikit-learn
Machine Learning
Isolation Forest
Logistic Regression
Visualization
Power BI
Interactive Dashboard Design
KPI Monitoring
Fraud Risk Analytics


🔍 Analysis Performed
Fraud vs Legit transaction analysis
Fraud transaction percentage calculation
Fraud transaction amount analysis
Fraud hotspot identification
Transaction type fraud analysis
Device and IP anomaly analysis
Correlation analysis using heatmaps
Suspicious transaction detection using Isolation Forest
Fraud prediction using Logistic Regression


🤖 Machine Learning Implementation
1. Isolation Forest — Anomaly Detection

Isolation Forest was used to automatically identify suspicious transactions that significantly deviated from normal transaction behavior.

Features Analyzed
Transaction amount
Transaction behavior patterns
Abnormal activity indicators
Purpose
Detect unusual transactions
Identify hidden suspicious patterns
Support fraud investigation workflows
2. Logistic Regression — Fraud Prediction

Logistic Regression was trained to classify transactions as fraud or legitimate.

Features Used
amount
unusual_device_flag
unusual_ip_flag
transaction_velocity
failed_transaction_count
otp_request_frequency
Model Goal

Predict the probability of a transaction being fraudulent based on transaction behavior indicators.


📈 Power BI Dashboard

The Power BI dashboard was designed to support fraud monitoring, anomaly detection, and risk analysis.


📊 Dashboard Highlights
KPI Cards
Total Transactions
Fraud Transactions
Fraud Amount
Fraud Rate (%)
Dashboard Visuals
Fraud Detection Ratio
Fraud Geographic Hotspots
Fraud Cases by Transaction Type
Suspicious Transaction Log
Fraud Risk Score Gauge
Fraud Trend Analysis
Interactive Features
Transaction Type Filter
Dynamic fraud analysis
Suspicious transaction filtering
Interactive visual exploration

📌 Key Insights
High-value transactions showed increased fraud probability
Transactions involving unusual devices and IP addresses displayed elevated fraud risk
Fraud activity was concentrated in specific geographic locations
High OTP request frequency and failed transaction attempts strongly correlated with fraud
Isolation Forest successfully identified suspicious transaction anomalies
Payment-related transactions showed higher fraud concentration

🚀 What This Project Demonstrates
End-to-end fraud analytics workflow
Practical SQL querying skills
Data cleaning and preprocessing
Exploratory Data Analysis (EDA)
Machine Learning implementation
Anomaly detection techniques
Interactive Power BI dashboard creation
Financial transaction risk analysis
Business-focused analytical thinking

📂 Project Structure
upi-fraud-detection-dashboard/
│
├── data/
├── notebooks/
├── dashboard/
├── screenshots/
├── README.md
├── requirements.txt
└── cleaned_fraud_data.csv

👤 Author
Raja ezzakiya D
B.Sc Information Technology
Data Analytics & Fraud Analytics Enthusiast

🔗 GitHub: (https://github.com/RajaEzzakiya-7/UPI-fraud-detection-dashboard)
🔗 LinkedIn: (www.linkedin.com/in/rajaezzakiya)

⭐ Feel free to explore this repository and provide feedback.
