# Sales Trend Analysis (SQL Aggregation)

## 📝 Task Objective
Analyze **monthly sales trends** including revenue and order volume using SQL.

## 📦 Dataset Table: `online_sales`
**Key columns used:**
- `order_date` (DATE)
- `amount` (FLOAT/DECIMAL)
- `order_id` (INT)

## 🔧 Tools Used
- SQL

## 🔍 Key Metrics Computed
- Monthly **Total Revenue**: `SUM(amount)`
- Monthly **Order Volume**: `COUNT(DISTINCT order_id)`
- **Top 3 Months** by revenue



## 📊 Output Example

| Year | Month | Revenue | Orders |
|------|-------|---------|--------|
| 2023 | 1     | 12500   | 143    |

## 🚀 Author
Mummadi Ramcharan
