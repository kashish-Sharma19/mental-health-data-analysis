# 🧠 Mental Health Analysis Project  
**Tools Used:** Excel • SQL • Power BI  
**Files Included:** Raw CSVs • Processed Excel Files • SQL Scripts • PBIX Dashboard  

---

## 📌 Project Overview
This project analyzes mental health indicators such as **Stress**, **Anxiety**, and **Depression** scores from survey data. It aims to identify patterns across demographic groups (gender, marital status, age groups, etc.) and presents insights using Excel, SQL, and Power BI.

The repository includes:
- Raw survey data  
- Cleaned/processed Excel files with formulas and pivot tables  
- SQL scripts used for querying, cleaning, and analysis  
- Power BI interactive dashboard (PBIX file)  


## 🔍 Objectives of the Project
- Analyze mental well-being using **DASS-21** components  
  - Stress  
  - Anxiety  
  - Depression  
- Identify differences by:
  - Gender  
  - Occupation  
  - city  
  - Age groups  

- Build dashboards & visual insights to support mental health awareness.

---

## 🛠️ Analysis Steps

### **1. Data Cleaning (Excel & SQL)**
- Removed missing or inconsistent values  
- Derived new metrics:
  - `income_description`  
  - `round_dass21_raw_score`  
  - `Risk_level`
- Created helper columns using Excel formulas

### **2. Exploratory Analysis (Excel Pivots)**
- Average Stress/Anxiety/Depression by income  
- mental health indicators vary across major Indian cities 
- Income group vs mental health comparison  

### **3. Data Visualization (Power BI)**
- Clustered bar charts for gender analysis  
- Mental health score distribution  
- Income category insights  
- Demographic breakdown visuals  

---

## 📊 Key Insights & Findings
A few sample insights:

- Females reported slightly higher **anxiety** levels than males  
- Chennai & Mumbai show **highest average anxiety & stress**, indicating higher urban psychological load.
- High-Income females show much lower anxiety compared to High-Income males.
- Students show extremely high stress (30) — indicates academic pressure + financial strain

## 📁 How to Use This Project

### ▶️ **Excel**
Open files in `data_processed/` to view:
- Cleaned dataset  
- Pivot tables  
- Advanced Excel formulas  

### ▶️ **SQL**
Run scripts in the `sql/` folder on MySQL Workbench to:
- Create tables  
- Load raw data  
- Run analysis queries  

### ▶️ **Power BI**
Open `powerbi/mental_health_dashboard.pbix` to view:
- Interactive dashboard  
- Visual insights  
- Filters by demographic fields  

---

## 📬 Contact
If you want to collaborate or have questions, feel free to reach out!

**Kashish Sharma**  
📧 Email: kmsharma342@gmail.com  

---

### ⭐ If you find this project useful, don’t forget to star the repository!
