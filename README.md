# Analytics Engineering Foundations
**Mission:** Transforming raw data into high-integrity production intelligence to drive cash flow and attribution.

> **Engineering Philosophy:**
I prioritize **Rationale** over raw output, Depth Over Volume.
Aiming to engineer and document solutions through a lifecycle of: 
    1. **Functional Solve** 
    2. **Edge-Case Stress Testing** (Ties/NULLs) 
    3. **Professional Refactor** (Window Functions/CTEs).

### 01. NYC Taxi Churn Prevention 
Identify high-value passengers at risk of churn  
**Tech**: BigQuery + dbt + Advanced SQL  
**Impact**: $2M annual revenue recovery opportunity  
[📁 Code](01-nyc-taxi-dbt/) | [📊 Results](01-nyc-taxi-dbt/data/)

### 02. E-commerce SaaS Metrics 
Build LTV/CAC/cohort analysis platform  
**Tech**: dbt Semantic Layer + Tests + Python loader  
**Impact**: Self-serve executive dashboard 
[📁 Code](02-ecom-cohorts/)

### 03. Regime Signals and return stats
**Problem**: Market regime detection → Trading signals  
**Tech**: Airbyte → BigQuery → dbt → Evidence.dev  
**Impact**: Engineering statistical edge through cross-asset regime intelligence
[📁 Code](03-regime-stat-lab/)

____

## Technical Standards & Stack

**Data Modeling & Transformation (dbt/BigQuery):** 
I prioritize Dry-runs and Incremental loads to optimize compute costs and performance.
Adopting Medallion Architecture (Bronze, Silver, Gold) to ensure data lineage. 

**Data Quality & Reliability:** 
Adopting a test-driven approach in dbt to ensure data integrity, focusing on unique keys and null-value prevention.
Quality First.

**Engineering Workflow:**
Version control via Git with a focus on atomic commits. 
Scalable SQL: Transitioning from "Functional" SQL to "Professional" SQL by prioritizing Window Functions and CTE-based logic for better performance, maintainability and scalability.

