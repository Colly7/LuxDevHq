# Data Analysis Dashboard Project 
## Project Title 
Jumia Product Performance Dashboard: Analyzing Pricing, Discounts, and Customer Reviews 
## Project Objective 
The objective of this project is to design and build an interactive Excel dashboard that analyzes 
the performance of products listed on Jumia. Students will explore how pricing, discounts, 
reviews, and ratings influence product performance and customer engagement. The final 
dashboard should support data-driven decision-making in an e-commerce context. 
## Dataset Overview 
The dataset contains product-level data with the following columns:  
Product – Name of the product  
Current Price – Current selling price in Kenyan Shillings (KSh)  
Old Price – Original price before discount in Kenyan Shillings (KSh)  
Discount – Discount percentage applied to the product  
Reviews – Number of customer reviews  
Rating – Average customer rating out of 5 
### Data Cleaning and Preparation 
• Check for and handle missing values, especially in the Reviews and Rating columns 
• Identify and remove duplicate product entries  
• Convert price columns into numeric format by removing “KSh” (use split text to columns 
under Data tab), commas, and text or use Find and Replace (Ctrl + H)  
• Ensure the Discount column is numeric and properly formatted as a percentage (use Find and 
Replace, LEFT/RIGHT functions, or Text to Columns)  
• Convert the Rating column from text format (e.g., “4.5 out of 5”) into numeric values  
• Convert negative reviews to positive 
![alt text](image-16.png)
### Data Enrichment 
Create the following additional columns:  
• Discount Amount (KSh): Old Price minus Current Price ![alt text](image-13.png) 
• **Rating Category:**   
            Poor for ratings below 3  
            Average for ratings between 3 and 4.4  
            Excellent for ratings of 4.5 and above  ![alt text](image-14.png)
• **Discount Category:**   
             Low Discount for discounts below 20%  
             Medium Discount for discounts between 20% and 40%  
             High Discount for discounts above 40% ![alt text](image-15.png)
 
 
### Data Analysis 
#### Descriptive Analysis  
• What is the average current price, old price, discount percentage, and rating?  ![alt text](image-9.png)  
• Which product is the most expensive and which is the least expensive?![alt text](image-10.png)  
• What is the average rating and discount by discount category?  ![alt text](image-11.png) 
• How are products distributed across rating categories? ![alt text](image-12.png)
#### Trend and Relationship Analysis 
• Analyze the relationship between discount percentage and number of reviews ![alt text](image-5.png)
• Analyze the relationship between rating and number of reviews  ![alt text](image-6.png)
• Determine whether higher discounts lead to increased customer engagement ![alt text](image-7.png) 
• Determine whether higher-rated products tend to have more reviews  ![alt text](image-8.png)
#### Product Performance Analysis 
• Identify the top 10 products with the highest discounts  ![alt text](image-1.png)
• Identify the top 10 products with the most reviews  ![alt text](image-2.png) 
• Identify the top 5 highest-rated and bottom 5 lowest-rated products  ![alt text](image-3.png)
• Compare high-discount and low-discount products based on average rating and number of 
reviews   ![alt text](image-4.png)
### Dashboard Design 
#### Dashboard Requirements 
Create a single interactive Excel dashboard containing the following sections: 
##### Overview 
• Total number of products  
• Average rating  
• Average discount percentage  
• Total number of reviews 
##### Product Performance 
• Top products by rating  
• Top products by number of reviews  
• Top products by discount percentage 
##### Trend Analysis 
• Visualizations showing discount percentage versus reviews  
• Visualizations showing rating versus reviews 
##### Product Categories 
• Breakdown of products by rating category  
• Breakdown of products by discount category 
##### Visualization Guidelines 
• Use Pivot Tables as the primary data source   
• Use appropriate charts such as bar charts, column charts, pie or donut charts, and scatter plots  
• Apply conditional formatting to highlight high discounts and low ratings 
• Include slicers for rating category, discount category, and price range where applicable
![alt text](image.png)