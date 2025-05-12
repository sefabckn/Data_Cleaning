# 📊 Tech Layoffs 2020–2023: SQL Data Cleaning & Visualisation Project

![SQL](https://img.shields.io/badge/SQL-Data_Cleaning-blue)
🚀 *A complete data cleaning and exploration journey using SQL — visualised for impact.*

---

## 🎯 Project Objective

This project dives into real-world tech layoff data from 2020 to 2023.
**The goal:** Clean messy raw data using SQL and extract meaningful business insights through clear visualisations.

It showcases:

* SQL proficiency in handling messy data
* Real-world data wrangling techniques
* Insightful business storytelling with data

---

## 🛠️ Tools Used

* **MySQL** – For data cleaning & transformation
* **Tableau** – For final data visualizations
* **GitHub** – For version control & collaboration

---

## 🧩 Steps in the Project

### 1️⃣ Data Preparation

* Loaded raw data into a MySQL database (`layoffs`)
* Created a backup table (`layoffs_staging`) to avoid accidental loss

### 2️⃣ Data Cleaning in SQL

Performed various cleaning operations:

* ✅ **Removed duplicates** using `ROW_NUMBER()`
* 🧼 **Standardised values** (e.g., company names, countries, industries)
* 📆 **Formatted date** fields from string to SQL `DATE`
* 🔍 **Handled nulls and blanks** (especially in `industry`)
* 🗑️ **Deleted irrelevant or fully empty rows**
* 🧱 Dropped helper columns like `row_num` after cleaning

### 3️⃣ Final Output

The cleaned data was saved in `layoffs_staging2`, ready for visualisation.

---

## 📈 Key Insights from Visualisation

> 📁 See full visualisation in the attached [LayoffsBI.pdf](LayoffsBI.pdf)

### 🔹 Total Layoffs by Year

* 📈 **2022** had the highest number of layoffs — more than 100K
* 🛑 Sharp increase observed post-2021

### 🔹 Most Affected Industries

* 🛍️ **Retail**, 📱 **Consumer Tech**, 🍔 **Food**, and 💻 **Hardware** were hit hardest
* 💸 **Finance** and ✈️ **Travel** followed closely

### 🔹 Companies with Most Layoffs

- - 🛒 **Amazon** leads with over **18K layoffs**  
- <img src="https://upload.wikimedia.org/wikipedia/commons/2/2f/Google_2015_logo.svg" alt="Google" width="50"/> **Google**, 
  <img src="https://upload.wikimedia.org/wikipedia/commons/4/48/Dell_Logo.svg" alt="Dell" width="50"/> **Dell**, and 
  <img src="https://upload.wikimedia.org/wikipedia/commons/b/be/Booking.com_logo.svg" alt="Booking.com" width="50"/> **Booking.com** also reported high cuts


### 🔹 Layoffs by Country

* 🇺🇸 **United States** dominates layoffs
* 🇮🇳 **India** and 🇸🇪 **Sweden** are notable as well

---

## 🧠 What I Learned

* Mastered SQL techniques like `ROW_NUMBER()`, `TRIM()`, and `STR_TO_DATE()`
* Applied real-life data cleaning best practices
* Understood how to extract insights that matter in a business context
* Strengthened end-to-end data project development — from raw to clean to visuals

---

## 💡 Next Steps

* Build a **dashboard** from this project using Power BI or Streamlit
* Apply **machine learning** models to predict future layoffs
* Automate updates for real-time layoff tracking

---

## 👋 Let’s Connect

📧 sefabckn@gmail.com  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/sefabckn/)  
🌐 [Portfolio Website](https://sefabckn.github.io/SefaTheAnalyst.github.io/index.html#)  
---


> ⭐ **If you like this project, give it a star!**
> 📂 Explore the repository and check out the SQL code and visual insights.

