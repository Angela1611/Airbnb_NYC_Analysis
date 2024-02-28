use airbnbny;
#Change Column name
ALTER TABLE airbnb_nyc
CHANGE COLUMN Boroughs District TEXT;
#Create Column Occupied_Days
ALTER TABLE airbnb_nyc
ADD COLUMN Occupied_days INT;
UPDATE airbnb_nyc
SET Occupied_days = 365 - Days_available;
SELECT DISTINCT District
FROM airbnb_nyc;
#Average price per district
SELECT District, AVG(Price) AS Average_Price
FROM airbnb_nyc
GROUP BY District;
#Standard deviation Average price per district
SELECT District, STDDEV(Price) AS Std_Dev_Price
FROM airbnb_nyc
GROUP BY District;
#Average occupancy rate per zone
SELECT District, AVG(Occupied_days) AS Avg_Occupied_Days
FROM airbnb_nyc
GROUP BY District;
#Percentage of occupancy during the year
SELECT 
    District, 
    AVG(Occupied_days) AS Avg_Occupied_Days,
    (AVG(Occupied_days) / 365) * 100 AS Percentage_of_365
FROM 
    airbnb_nyc
GROUP BY 
    District;
#Check types of property
SELECT DISTINCT Prop_Type
FROM airbnb_nyc;
#Popularity of property types
SELECT Prop_Type, AVG(Occupied_days) AS Avg_Occupied_Days
FROM airbnb_nyc
GROUP BY Prop_Type;
WITH RankedProps AS (
    SELECT
        District,
        Prop_Type,
        COUNT(*) AS Frequency,
        ROW_NUMBER() OVER (PARTITION BY District ORDER BY COUNT(*) DESC) AS rn
    FROM
        airbnb_nyc
    GROUP BY
        District,
        Prop_Type
)
SELECT
    District,
    Prop_Type,
    Frequency
FROM
    RankedProps
WHERE
    rn = 1;




