select * from marketinganalytics.`dbo.engagement_data`;
USE marketinganalytics;  

SELECT 
    EngagementID,  
    ContentID, 
	CampaignID, 
    ProductID,  
    UPPER(REPLACE(LOWER(ContentType), 'socialmedia', 'Social Media')) AS ContentType,  
    SUBSTRING_INDEX(ViewsClicksCombined, '-', 1) AS Views,  
    SUBSTRING_INDEX(ViewsClicksCombined, '-', -1) AS Clicks,  
    Likes,  
  
    DATE_FORMAT(STR_TO_DATE(EngagementDate, '%Y-%m-%d'), '%d.%m.%Y') AS EngagementDate  
FROM 
     marketinganalytics.`dbo.engagement_data`  
WHERE 
    ContentType != 'Newsletter';  