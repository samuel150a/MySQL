CREATE TABLE scan_info1 (
    id INT,
    name VARCHAR(20),
    name2 VARCHAR(23),
    country VARCHAR(20),
    year INT,
    organisation VARCHAR(20)
);
  
  
  
  INSERT INTO scan_info1 VALUES (1, "Identity Theft", "Frank Abagnale", "USA", 1970, "Bank Fraud");  
INSERT INTO scan_info1 VALUES (2, "Online Shopping Scam", "Unknown", "Global", 2021, "E-commerce Fraud");  
INSERT INTO scan_info1 VALUES (3, "Lottery Scam", "Scam Callers", "Nigeria", 2015, "Phone Fraud");  
INSERT INTO scan_info1 VALUES (4, "Investment Fraud", "Jordan Belfort", "USA", 1999, "Stock Market Scam");  
INSERT INTO scan_info1 VALUES (5, "Insurance Fraud", "Unknown", "UK", 2018, "False Claims");  
INSERT INTO scan_info1 VALUES (6, "Deepfake Extortion", "AI Scammers", "Global", 2023, "Blackmail Fraud");  
INSERT INTO scan_info1 VALUES (7, "Fake Charity Scam", "Fraudsters", "India", 2020, "Donation Fraud");  
INSERT INTO scan_info1 VALUES (8, "Ponzi Scheme", "Allen Stanford", "USA", 2009, "Financial Fraud");  
INSERT INTO scan_info1 VALUES (9, "Romance Scam", "Scammers", "Global", 2019, "Online Dating Fraud");  
INSERT INTO scan_info1 VALUES (10, "Tax Refund Scam", "Fake IRS Agents", "USA", 2017, "Government Fraud");  
INSERT INTO scan_info1 VALUES (11, "Medical Billing Fraud", "Healthcare Scammers", "Global", 2022, "Insurance Fraud");  
INSERT INTO scan_info1 VALUES (12, "Fake Loan Scam", "Fraudulent Banks", "India", 2021, "Loan Fraud");  
INSERT INTO scan_info1 VALUES (13, "Job Recruitment Scam", "Fake HR Agencies", "UK", 2019, "Employment Fraud");  
INSERT INTO scan_info1 VALUES (14, "Tech Support Scam", "Call Center Fraud", "Global", 2016, "IT Scam");  
INSERT INTO scan_info1 VALUES (15, "Fake Celebrity Endorsement", "Scam Advertisers", "Global", 2023, "Social Media Fraud");  
 
 update scan_info1 set country='papu' where id = 3;

 SELECT * FROM scan_info1;
 
 
 SELECT * FROM scan_info1 where id  not between 5 and 6;

 
 