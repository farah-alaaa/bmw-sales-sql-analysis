# BMW Car Sales Data Analysis - SQL Project

## Overview
This repository contains **SQL queries and analysis** for BMW car sales data using Microsoft SQL Server. The purpose of this project is to explore and analyze the BMW sales dataset to extract meaningful insights such as total sales, top-selling models, regional performance, and yearly trends.

The dataset used is assumed to be stored in a SQL Server database named `NTI-` with a table called `BMW_sales_data`.

---

## Database
- **Database Name:** NTI-
- **Table Name:** BMW_sales_data

**Key Columns:**
| Column Name    | Description                                  |
|----------------|----------------------------------------------|
| Year           | Year of the sales record                     |
| Model          | BMW car model                                |
| Sales_Volume   | Number of units sold                         |
| Region         | Geographic region of the sale                |

---

## SQL Queries and Analysis

### 1. Select All Records
```sql
SELECT * FROM [BMW_sales_data];
