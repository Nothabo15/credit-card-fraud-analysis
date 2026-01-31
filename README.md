# Credit Card Fraud Analysis: Transaction Behavior & Risk Insights

### Executive Summary 
Credit card fraud represents a low-frequency but high-impact risk for financial institutions. Although fraudulent transactions account for only 0.17% of total activity, they are disproportionately concentrated in higher-value transactions and exhibit distinct temporal patterns.

This analysis transforms raw transaction data into risk-focused insights by examining behavioral, monetary, and time-based differences between fraudulent and legitimate transactions. The resulting dashboard supports fraud monitoring, rule tuning, and decision-making by highlighting where risk is most concentrated and how controls can be optimized without unnecessary customer friction.

### Client Overview
The rapid growth of digital payments has increased both transaction volume and fraud exposure. Traditional accuracy-based detection approaches are ineffective in this domain due to extreme class imbalance. As a result, financial services teams require precision-focused, behavior-aware monitoring strategies that balance fraud prevention with customer experience.

This project was designed to support that objective.

### Business Objectives

- Identify patterns that differentiate fraudulent transactions from legitimate ones.

- Quantify the extent of class imbalance between fraud and non-fraud transactions.

- Analyze transaction amount behavior to understand fraud risk exposure.

- Examine time-based patterns to identify high-risk transaction windows.

- Provide actionable insights that could inform fraud detection rules and monitoring systems.

### Analytical Approach

This analysis followed a structured, decision-oriented workflow:

1. Data validation & quality checks to ensure analytical reliability.

2. Exploratory data analysis (EDA) to profile fraud vs non-fraud behavior.

3. Segmentation by transaction amount and time-of-day.

4. Comparative analysis to validate observed fraud patterns.

5. Business interpretation focused on risk mitigation and monitoring strategy.

Patterns were evaluated for consistency across segments to reduce the risk of outlier-driven conclusions.

### Key Metrics

- Total Transactions: 284,000 transactions analyzed.

- Fraud Transactions: 473 (0.17% of total transactions), confirming extreme class imbalance.

- Average Fraud Amount: $123.87, significantly higher than legitimate transactions.

- Average Legitimate Amount: $88.41.

- Peak Fraud Hours: Late morning and early evening hours show elevated fraud activity.

## Fraud & Transaction Insights
![Credit Card Fraud Analysis Dashboard](dashboard_overview.png)


### 1. Extreme Class Imbalance Defines the Problem Space

Fraud represents only 0.17% of transactions (473 out of 283,726).
This confirms that accuracy-based models are misleading, as a naïve classifier could achieve high accuracy while missing nearly all fraud events.

Implication: Fraud detection systems must prioritize precision, recall at high confidence thresholds, and cost-sensitive evaluation.

### 2. Fraud Transactions Carry Higher Monetary Risk

Fraudulent transactions show a higher average value than legitimate ones:
Fraud: $123.87
Legitimate: $88.41

Interpretation: Fraudsters tend to target higher-value transactions, maximizing payout while remaining below hard authorization limits.
Business Risk: A small number of fraud events can drive disproportionate financial loss.

### 3. Large Transactions Are Disproportionately Fraud-Prone

Fraud concentration increases sharply in large transaction bands, while low-value transactions remain predominantly legitimate.

Interpretation:
This pattern suggests fraudsters may be:
- Testing transaction thresholds
- Exploiting weaker controls on higher-value purchases
Opportunity: Amount-based risk segmentation offers strong signal with minimal customer disruption.

### 4. Time-Based Fraud Peaks Reveal Behavioral Patterns

Fraud activity spikes during:
- Late morning (10–11 AM)
- Early evening (6–8 PM)
Legitimate transactions follow a more stable diurnal pattern aligned with typical consumer behavior.

Interpretation: These windows may reflect:
- Monitoring fatigue or coverage gaps
- High-volume camouflage periods
- Cross-time-zone exploitation
Time-of-day serves as a useful contextual risk feature rather than a standalone trigger.

### 5. Legitimate Transactions Follow Predictable Human Behavior

Legitimate activity shows consistent peaks during business and evening hours and declines overnight.
Analytical Insight:
Deviations from these predictable patterns can act as behavioral anomaly signals when combined with amount and velocity features.

## Actionable Recommendations
  ### 1. Risk-Weighted Transaction Monitoring

Apply enhanced controls (for example step-up authentication, velocity checks) to:
-  High-value transactions
- Transactions during identified fraud-heavy hours
Trade-off: Thresholds should be calibrated to reduce fraud exposure while minimizing friction for trusted customers.

   ### 2. Amount-Sensitive Fraud Rules

Implement dynamic thresholds that:
- Trigger additional scrutiny for unusually large transactions
- Adapt based on individual transaction history
Benefit: Balances fraud prevention with customer experience.

  ### 3. Time-Aware Fraud Scoring

Incorporate hour-of-day features into fraud scoring models.
Impact: Improves early detection by leveraging consistent temporal fraud patterns.
  
  ### 4. Precision-Focused Model Evaluation

Given extreme imbalance, future modeling should optimize:
- Precision–Recall AUC.
- False-positive cost.
- Recall at high-confidence thresholds.
Rationale: Prevents excessive customer disruption from false alerts.

   ### 5. Scalable Monitoring Strategy

Use this dashboard as an ongoing monitoring layer to:
- Track fraud behavior drift.
- Detect emerging high-risk windows.
- Support rapid rule tuning.
Outcome: Enables continuous risk management rather than static rule sets.

## Business Relevance

These insights can help financial institutions to:
- Improve fraud detection rule design.
- Optimize real-time monitoring windows
- Reduce false positives while capturing high-risk fraud
- Strengthen customer trust and transaction security
This project demonstrates how data analysis and visualization transform raw transaction data into actionable fraud intelligence.

  ## Data Cleaning & Preparation

Source: Kaggle credit card transaction dataset
Duplicate checks: No duplicates found
Missing values: No critical missing fields
Data types: Validated and converted where required
Time parsing: Transaction hour extracted from timestamps for temporal analysis

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


