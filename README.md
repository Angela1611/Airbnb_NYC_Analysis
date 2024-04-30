### **Airbnb NYC analysis**
####  By Angela Escobar



# Table of Contents
2. [Project description and objective](#project-description-and-objective)
3. [Data preparation and processing](#data-preparation-and-processing)
4. [Analysis and conclusions](#analysis-and-conclusions)
5. [Visualization in Tableau](#visualization)
6. [Tech Stack](#tech-stack)

## Project description and objective


This analysis was based on a dataset containing information about property rentals in New York City through Airbnb. The purpose was to obtain general information about the behavior of these rentals and to identify patterns in this behavior.

## Data preparation and processing

In the preparation of this analysis project, the necessary metrics were determined to conduct the study. The database was located, downloaded, and subsequently securely and systematically organized on the computer. Additionally, a version control repository was created to ensure the security of the information.

For data processing, a thorough cleaning procedure was conducted, focusing on identifying erroneous or inaccurately entered data and removing any duplicated information. Additionally, outliers were identified and handled appropriately to ensure the integrity and accuracy of the dataset. Data normalization and transformation techniques were applied as needed to prepare the data for analysis. 

This is a list of the specific actions that were carried out. More detailed information can be found in the project code.

* Import datasets specifying separator
* Remove rows with missing values 
* Clean column names
* Remove empty spaces
* Review and correct the data type of each column
* Hide columns that would not be relevant for the analysis.
* Filter some columns to omit zero values
* Rename columns


## Analysis and conclusions

The following conclusions were reached through information extraction via SQL:

* The districts with the highest average cost are Manhattan, Brooklyn, Queens, Staten Island, and the Bronx, respectively.

* Manhattan and Brooklyn are the districts with the highest number of rentals per year, both with around 16,000 per year.

* Manhattan and Brooklyn both have an occupancy rate of 71.22% during the year, while Staten Island is the district with the lowest occupancy, with a rate of 43.02%.

* In Manhattan and Brooklyn, the most requested type of property is the "Entire Home", while in the Bronx, Queens, and Staten Island, "Private Room" rentals are more popular.

* Shared rooms are the least popular type of property, accounting for around 3% of rentals compared to "Entire Home" in Manhattan.

## Visualization

The conclusions were gathered and represented in an interactive dashboard in Tableau, which can be accessed at the following [link](https://public.tableau.com/app/profile/angela161/viz/AirbnbNYCAnalysis_17093234133180/Dashboard3)

![08](https://github.com/Angela1611/Airbnb_NYC_Analysis/assets/158333155/9b450f54-8913-4811-bc81-697d0db0d3d9)

## Tech Stack

  MYSQL

  SQL

  Tableau
  
  
_______________END OF CASE STUDY_________________________
