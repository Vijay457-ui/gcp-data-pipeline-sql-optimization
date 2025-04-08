# GCP Batch Data Pipeline – Chicago Salaries Analysis & SQL Optimization

This project demonstrates an end-to-end batch data pipeline using Google Cloud Platform (GCP), built around the Chicago Public Salaries dataset. It showcases how to ingest, process, transform, and analyze public data at scale using GCP tools and SQL optimization techniques.

## 🚀 Tech Stack

- **Google Cloud Storage (GCS)** – for raw data storage
- **BigQuery** – for scalable data warehousing and transformations
- **Google Cloud SDK** – for command-line operations
- **SQL** – for analysis and optimization
- **GitHub** – for version control

## 📊 Dataset

Public dataset: [Chicago Salaries](https://data.cityofchicago.org/Administration-Finance/Employee-Salaries/53t8-wyrc)  
Source: City of Chicago data portal  
Format: CSV (uploaded to GCS)

## 🔁 Data Pipeline Flow

1. Download public dataset in CSV format.
2. Upload CSV to GCS bucket.
3. Load data from GCS into BigQuery table.
4. Run SQL queries for transformations and analysis:
   - Calculate average salary by department.
   - Top 10 highest-paid job titles.
   - Filter employees working more than 40 hours.
   - Estimate annual salary from hourly rates.
   - Compare full-time vs part-time workers.
5. Export processed data back to GCS for visualization/reporting.
6. (Optional) Connect Looker Studio for interactive dashboards.

![Pipeline Diagram](images/pipeline_diagram.png)

## 🧠 Key SQL Optimization Techniques

- Used `IS NOT NULL` filters to reduce scan size.
- Grouped data and calculated aggregates efficiently.
- Applied conditional logic for estimated fields.
- Scheduled queries for daily exports (BigQuery scheduler).

## 📁 Project Structure

```
├── chicago_salaries.csv        # Raw data
├── queries/                    # SQL transformation scripts
├── export/                     # Processed and exported datasets
├── images/                     # Pipeline diagrams and dashboard
├── README.md                   # Project overview and guide
```

## 💡 Learnings & Impact

- End-to-end exposure to building scalable batch pipelines on GCP.
- Hands-on with BigQuery SQL best practices.
- Optimized transformations and automated scheduling.
- Ready-to-use portfolio project for resumes and interviews.

## 📌 Author

**Vijay More**  
Email: vijaymore300793@gmail.com  
LinkedIn: [linkedin.com/in/morevijay-dataengineer](https://linkedin.com/in/morevijay-dataengineer)  
GitHub: [github.com/Vijay457-ui](https://github.com/Vijay457-ui)

---

⭐ If you found this project helpful, please give it a star and connect with me!