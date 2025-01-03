
SELECT 
    ReviewID, 
    CustomerID,  
    ProductID,  
    ReviewDate,  
    Rating,  
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    marketinganalytics.`dbo.customer_reviews`; 