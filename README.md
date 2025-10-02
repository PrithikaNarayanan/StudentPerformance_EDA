# 📊 Student Performance EDA in R

## 🔹 Overview

This project performs **Exploratory Data Analysis (EDA)** on a dataset related to student performance in tests. The dataset captures several demographic and socio-economic factors such as gender, parental education level, ethnicity, lunch status, and test preparation. It also includes students’ scores in **Mathematics, Reading, and Writing**.

The analysis explores relationships between these variables and student scores, providing statistical insights and visualizations using **R programming language**.

---

## 🎯 Objectives

1. To analyse all the different columns and rows in the dataset.
2. To identify factors affecting student marks such as gender, ethnicity, and parental qualification.
3. To perform **Exploratory Data Analysis (EDA)** using descriptive statistics and visualizations.
4. To carry out both **univariate** and **bivariate** analysis.
5. To draw meaningful **conclusions and correlations** from the dataset.

---

## 📂 Dataset Information

* **Domain:** Education
* **Rows:** 1000
* **Columns:** 10
* **No missing values**

### 🔑 Features

1. **Gender** → Male or Female
2. **Ethnicity / Race** → Group A, B, C, D, E
3. **Parental Level of Education** → Associate’s Degree, Bachelor’s Degree, High School, Master’s Degree, Some College, Some High School
4. **Lunch Status** → Standard or Free/Reduced
5. **Test Preparation Status** → Completed or None
6. **Mathematics Score**
7. **Reading Score**
8. **Writing Score**

---

## 🛠️ Tech Stack

* **Language:** R
* **Libraries Used:**

  * `ggplot2` – Visualization
  * `dplyr` – Data manipulation
  * `tidyr` – Data cleaning
  * `corrplot` – Correlation analysis
  * `summarytools` – Descriptive statistics

## 🔎 Analysis Performed

### 1. **Descriptive Statistics**

* Maximum marks in all subjects: **100**
* Distribution is **skewed** (not symmetrical)
* Scores mainly concentrated between **60–100**

### 2. **Demographic Distribution**

* **Gender:** 518 Females, 482 Males
* **Lunch Status:** 2/3 Standard, 1/3 Free/Reduced
* **Ethnicity:** Group C largest (319 students), Group A smallest (89 students)
* **Parental Education:** Composite distribution (Most common = Some College, Associate’s Degree)

### 3. **Categorization of Scores**

* **Fail:** 0–40
* **Meritorious:** 40–60
* **Outstanding:** 60–80
* **Exceptional:** 80–100

| Subject     | Fail | Meritorious | Outstanding | Exceptional |
| ----------- | ---- | ----------- | ----------- | ----------- |
| Reading     | 27   | 248         | 490         | 235         |
| Writing     | 35   | 266         | 491         | 208         |
| Mathematics | 49   | 289         | 485         | 176         |
| **Total**   | 32   | 269         | 513         | 186         |

### 4. **Test Preparation Impact**

* Overall, minimal effect on marks.
* Students who completed the course scored **slightly higher in 80+ range**, especially in Reading & Writing.
* In Writing, students without preparation sometimes scored more.

### 5. **Parental Education & Gender**

* Female students tend to have better parental educational backgrounds.
* Higher parental education **positively impacts grades**.
* Few parents with **Master’s degrees**, most have Associate’s or Some College.

### 6. **Lunch Status & Performance**

* Surprisingly, students with **free/reduced lunch performed better** than those with standard lunch.

### 7. **Correlations Between Subjects**

* **Reading ↔ Writing:** Very strong (0.95)
* **Math ↔ Reading:** Strong (0.8)
* **Math ↔ Writing:** Strong (0.8)

---

## 📈 Key Conclusions

1. Dataset is clean, balanced, and suitable for EDA.
2. Scores are skewed but concentrated in 60–100 range.
3. Gender distribution is nearly balanced, with slightly more females.
4. Parental education influences performance, but not strongly linked to test preparation course choice.
5. Free/reduced lunch students perform unexpectedly better.
6. Strong correlations exist between Reading, Writing, and Mathematics.

---


