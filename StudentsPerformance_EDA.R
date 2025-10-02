# Reading the excel File
StudentsPerformance <- read_excel("C:/Users/prith/Downloads/StudentsPerformance.csv.xlsx")

# Display the File
StudentsPerformance

# Univariate Analysis
summary(StudentsPerformance)

# Boxplot of Marks
boxplot(StudentsPerformance$`math score`, main = "Boxplot of Maths Score", col = "orange")
boxplot(StudentsPerformance$`reading score`, main = "Boxplot of Reading Score", col = "red")
boxplot(StudentsPerformance$`writing score`, main = "Boxplot of Writing Score", col = "magenta")

# Barplot of Gender
barplot(table(StudentsPerformance$gender), xlab = "Gender", col = c("lightgreen", "darkgreen"), ylab = "Count", main = "Gender Wise Count")
legend("topright", legend = c("Female", "Male"), fill = c("lightgreen", "darkgreen"))

# Pie Chart of Lunch
pie(table(StudentsPerformance$lunch), col = c("orange", "blue"), main = "Pie Chart Representing Lunch Options")

# Pie Chart of Parental Education
pie(table(StudentsPerformance$`parental level of education`),
    col = c("pink", "brown", "green", "lightblue", "purple", "orange"),
    main = "Pie Chart Representing Educational Status")

# Grouping Function
grouped_reading <- cut(StudentsPerformance$`reading score` ,
                       breaks = c(0, 40, 60, 80, 100),
                       labels = c("Fail", "Meritorious", "Outstanding", "Exceptional"))
table(grouped_reading)

grouped_writing <- cut(StudentsPerformance$`writing score`,
                       breaks = c(0, 40, 60, 80, 100),
                       labels = c("Fail", "Meritorious", "Outstanding", "Exceptional"))
table(grouped_writing)

grouped_math <- cut(StudentsPerformance$`math score` ,
                    breaks = c(0, 40, 60, 80, 100),
                    labels = c("Fail", "Meritorious", "Outstanding", "Exceptional"))
table(grouped_math)

# Barplots for Grouped Scores
barplot(table(grouped_math), main = "Students Performance in Maths", xlab = "Grade", ylab = "Count",
        col = c("red", "green", "lightblue", "purple"))

barplot(table(grouped_reading), main = "Students Performance in Reading", xlab = "Grade", ylab = "Count",
        col = c("red", "green", "lightblue", "purple"))

barplot(table(grouped_writing), main = "Students Performance in Writing", xlab = "Grade", ylab = "Count",
        col = c("red", "green", "lightblue", "purple"))

# Bivariate Analysis - Categorical vs Categorical
barplot(table(StudentsPerformance$`parental level of education`),
        xlab = "Parental Level of Education", ylab = "Count", main = "Education Visualisation",
        col = c("lightblue", "orange", "green", "red", "purple", "brown"))
legend("topright", legend = c("Associate's Degree", "Bachelor's Degree", "High School", "Master's Degree", "Some College", "Some High School"),
       fill = c("lightblue", "orange", "green", "red", "purple", "brown"))

barplot(table(StudentsPerformance$gender, StudentsPerformance$`parental level of education` ),
        beside = TRUE, xlab = "Parental Level of Education", ylab = "Count", main = "Gender-wise Education Visualisation",
        col = c("pink", "lightblue"))
legend("topright", legend = c("Female", "Male"), fill = c("pink", "lightblue"))

barplot(table(StudentsPerformance$`race/ethnicity` , StudentsPerformance$`parental level of education`),
        beside = TRUE, xlab = "Parental Level of Education by Ethnicity", ylab = "Count", main = "Race/Ethnicity Wise Education",
        col = c("pink", "brown", "green", "lightblue", "purple"))
legend("topright", legend = c("Group A", "Group B", "Group C", "Group D", "Group E"),
       fill = c("pink", "brown", "green", "lightblue", "purple"))

barplot(table(StudentsPerformance$gender, StudentsPerformance$`race/ethnicity`),
        beside = TRUE, xlab = "Race/Ethnicity", ylab = "Count", main = "Ethnicity Wise Gender Count",
        col = c("blue", "yellow"))
legend("topright", legend = c("Female", "Male"), fill = c("blue", "yellow"))

barplot(table(StudentsPerformance$`test preparation course`, StudentsPerformance$`parental level of education`),
        beside = TRUE, xlab = "Parent's Level of Education", ylab = "Count", main = "Education vs Test Preparation",
        col = c("blue", "brown"))
legend("topright", legend = c("Completed", "None"), fill = c("blue", "brown"))

# Grouped Average Score
grouped_average <- cut(StudentsPerformance$`Average Score Rounded` ,
                       breaks = c(0, 40, 60, 80, 100),
                       labels = c("Fail", "Meritorious", "Outstanding", "Exceptional"))

barplot(table(StudentsPerformance$lunch, grouped_average), beside = TRUE,
        col = c("pink", "lightblue"), main = "Lunch Type vs Average Marks", xlab = "Grade", ylab = "Count")
legend("topright", legend = c("Standard", "Free/Reduced"), fill = c("pink", "lightblue"))

barplot(table(grouped_average, StudentsPerformance$`parental level of education`),
        beside = TRUE, xlab = "Parental Level of Education", ylab = "Count", main = "Average Score vs Education",
        col = c("pink", "brown", "green", "lightblue"))
legend("topright", legend = c("Fail", "Meritorious", "Outstanding", "Exceptional"),
       fill = c("pink", "brown", "green", "lightblue"))

# Numerical vs Numerical
plot(StudentsPerformance$`reading score`, StudentsPerformance$`math score`,
     main = "Reading vs Math Score", xlab = "Reading Score", ylab = "Math Score", pch = 16, col = "lightgreen")

plot(StudentsPerformance$`writing score`, StudentsPerformance$`math score` ,
     main = "Writing vs Math Score", xlab = "Writing Score", ylab = "Math Score", pch = 16, col = "pink")

plot(StudentsPerformance$`writing score` , StudentsPerformance$`reading score`,
     main = "Reading vs Writing Score", xlab = "Reading Score", ylab = "Writing Score", pch = 16, col = "purple")

barplot(table(StudentsPerformance$`test preparation course`, grouped_reading),
        beside = TRUE, ylab = "Count", xlab = "Reading Grade", main = "Reading Scores vs Test Preparation",
        col = c("pink", "lightblue"))
legend("topright", legend = c("Completed", "None"), fill = c("pink", "lightblue"))

barplot(table(StudentsPerformance$`test preparation course`, grouped_writing),
        beside = TRUE, ylab = "Count", xlab = "Writing Grade", main = "Writing Scores vs Test Preparation",
        col = c("pink", "lightblue"))
legend("topright", legend = c("Completed", "None"), fill = c("pink", "lightblue"))

barplot(table(StudentsPerformance$`test preparation course`, grouped_math),
        beside = TRUE, ylab = "Count", xlab = "Math Grade", main = "Math Scores vs Test Preparation",
        col = c("pink", "lightblue"))
legend("topright", legend = c("Completed", "None"), fill = c("pink", "lightblue"))
