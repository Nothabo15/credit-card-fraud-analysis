# Credit Card Fraud Analysis: Transaction Behavior & Risk Insights

### Client Overview
Credit card fraud poses a significant financial risk to financial institutions and consumers worldwide. With the rapid growth of digital payments, detecting fraudulent transactions accurately and efficiently has become a critical business priority.

This project analyzes historical credit card transaction data to identify behavioral, monetary, and temporal patterns associated with fraudulent activity. The analysis focuses on understanding how fraud differs from legitimate transactions in terms of frequency, transaction size, and time-of-day behavior.

The Credit Card Fraud Analysis Dashboard consolidates key metrics to support risk monitoring, fraud prevention strategy, and data-driven decision-making for financial services teams.

### Business Objectives

- Identify patterns that differentiate fraudulent transactions from legitimate ones.

- Quantify the extent of class imbalance between fraud and non-fraud transactions.

- Analyze transaction amount behavior to understand fraud risk exposure.

- Examine time-based patterns to identify high-risk transaction windows.

- Provide actionable insights that could inform fraud detection rules and monitoring systems.

### Key Metrics

- Total Transactions: 284,000 transactions analyzed.

- Fraud Transactions: 473 (0.17% of total transactions), confirming extreme class imbalance.

- Average Fraud Amount: $123.87, significantly higher than legitimate transactions.

- Average Legitimate Amount: $88.41.

- Peak Fraud Hours: Late morning and early evening hours show elevated fraud activity.

## Fraud & Transaction Insights
![Credit Card Fraud Analysis Dashboard](dashboard_overview.png)


### 1. Extreme Class Imbalance Defines the Problem Space

Fraud accounts for only 0.17% of all transactions (473 out of 283,726). This severe imbalance confirms that traditional accuracy-based detection methods are misleading and highlights the necessity of precision-focused fraud strategies.

### 2. Fraud Transactions Carry Higher Monetary Risk

Fraudulent transactions have a higher average amount ($123.87) compared to legitimate ones ($88.41).

Interpretation:
Fraudsters tend to target higher-value transactions, maximizing payout while remaining under hard transaction limits.

Business risk:
Even a small number of fraud events can result in disproportionate financial loss.

### 3. Large Transactions Are Disproportionately Fraud-Prone

Fraud concentration increases sharply in the “Large” transaction band, while small-value transactions remain predominantly legitimate.

Interpretation:
Fraudsters are likely testing thresholds and exploiting higher-value purchases where authorization controls may be weaker.

### 4. Time-Based Fraud Peaks Reveal Behavioral Patterns

Fraud activity spikes during late morning (10–11 AM) and early evening (6–8 PM), while legitimate transactions peak steadily during business and evening hours.

Interpretation:
These time windows may correspond to:

- Reduced real-time monitoring intensity

- Higher transaction volume camouflage

- Cross-time-zone exploitation

### 5. Legitimate Transactions Follow Predictable Human Behavior

Legitimate transactions show a stable diurnal pattern, peaking during working and evening hours and dipping overnight.

Further insight:
Deviation from these patterns can serve as a behavioral anomaly signal for fraud detection systems.

## Actionable Recommendations
  ### 1. Risk-Weighted Transaction Monitoring

Apply stricter controls (step-up authentication, velocity checks) to:

- High-value transactions

- Transactions occurring during identified fraud-heavy hours

Note: Reduces fraud exposure while minimizing friction for low-risk users.

  ### 2. Amount-Sensitive Fraud Rules

Introduce dynamic thresholds that:

- Trigger enhanced scrutiny for unusually large transactions

- Adjust based on user transaction history

Note: Balances fraud prevention with customer experience.

  ### 3. Time-Aware Fraud Scoring

Incorporate hour-of-day features into fraud scoring models.

Note: Improves early detection by leveraging temporal fraud patterns.

  ### 4. Precision-Focused Model Evaluation

Given extreme imbalance, future modeling efforts should optimize:

- Precision-Recall AUC

- False Positive Cost

- Recall at High Confidence Thresholds

Note: Prevents customer disruption from excessive false alerts.

  ### 5. Scalable Monitoring Strategy

Use this dashboard as a monitoring layer to:

- Track fraud behavior drift

- Detect emerging fraud windows

- Support rapid rule tuning

Note: Enables continuous risk management rather than static rules.

## Executive Summary

This credit card fraud analysis highlights the rarity yet financial significance of fraudulent transactions. While fraud accounts for less than 0.2% of all transactions, it disproportionately affects high-value payments and exhibits distinct temporal patterns. By focusing on fraud rates rather than raw counts, this analysis demonstrates how financial institutions can enhance fraud detection strategies through targeted monitoring, time-based controls, and risk-weighted transaction screening.

## Business Relevance

These insights can help financial institutions to:

- Improve fraud detection rule design

- Optimize real-time monitoring windows

- Reduce false positives while capturing high-risk fraud

- Strengthen customer trust and transaction security

This project demonstrates how data analysis and visualization transform raw transaction data into actionable fraud intelligence.

  ## Data Cleaning & Preparation

The dataset for this analysis was sourced from Kaggle and processed using SQL prior to visualization.

1. Data Import & Initial Review

Imported the credit card transaction dataset into SQL for inspection and validation.

2. Data, Quality & Checks

- Duplicate Check	/ Verified unique transaction records/ 	No duplicates found

- Missing Values/	Checked all numeric and categorical fields/	No critical missing values

- Data Types	Validated numeric and categorical fields/	Converted where required
Time Parsing/	Extracted transaction hour from timestamp	used for temporal analysis

## Tools & Technologies

- SQL	Data cleaning & analysis

- Tableau Public	Data visualization

- GitHub	Project documentation & portfolio hosting

## Explore the Interactive Dashboard

## View on Tableau Public
(The dashboard includes filters by transaction type, hour, and amount band.)
https://public.tableau.com/app/profile/nothabo.moyo/viz/CreditCardFraudDetection_17668162257350/Dashboard1

## Author

Nothabo Michelle Moyo

Data Analyst | Python • SQL • Tableau  • Excel 

email: nothabomoyo07@gmail.com 

LinkedIn Profile: https://www.linkedin.com/in/nothabo-michelle-moyo-a38840378/


