create SCHEMA customer_churn_analysis;
USE customer_churn_analysis;
-- Step 2: Create the Customers Table with optimized data types

-- Create the Database
CREATE DATABASE IF NOT EXISTS customer_churn_analysis;
USE customer_churn_analysis;

-- -- Create the Customers table
-- CREATE TABLE Customers (
--     customer_id VARCHAR(50) PRIMARY KEY,         -- Keep as VARCHAR for unique customer IDs
--     gender ENUM('Male', 'Female') NOT NULL,      -- Use ENUM for gender (two distinct values)
--     senior_citizen TINYINT(1) NOT NULL,          -- Boolean field for senior citizen status
--     partner TINYINT(1) NOT NULL,
--     dependents TINYINT(1) NOT NULL,
--     tenure SMALLINT UNSIGNED NOT NULL,           -- Tenure in months (range 0-65535)
--     phone_service TINYINT(1) NOT NULL,
--     multiple_lines ENUM('No', 'Yes', 'No phone service') NOT NULL,
--     internet_service ENUM('DSL', 'Fiber optic', 'No') NOT NULL,
--     online_security ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     online_backup ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     device_protection ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     tech_support ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     streaming_tv ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     streaming_movies ENUM('No', 'Yes', 'No internet service') NOT NULL,
--     contract ENUM('Month-to-month', 'One year', 'Two year') NOT NULL,
--     paperless_billing TINYINT(1) NOT NULL,
--     payment_method ENUM('Electronic check', 'Mailed check', 'Bank transfer', 'Credit card') NOT NULL,
--     monthly_charges DECIMAL(10,2) NOT NULL,      -- Optimized for financial values
--     total_charges DECIMAL(10,2) NOT NULL,        -- Optimized for larger financial values
--     churn TINYINT(1) NOT NULL                    -- Boolean field for churn status
-- );
-- Create the Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(50) PRIMARY KEY,        -- Unique customer ID
    gender ENUM('Male', 'Female') NOT NULL,     -- Gender (only two distinct values)
    senior_citizen TINYINT(1) NOT NULL,         -- Boolean for senior citizen status
    partner TINYINT(1) NOT NULL,                -- Boolean for partner status
    dependents TINYINT(1) NOT NULL,             -- Boolean for dependents
    tenure SMALLINT UNSIGNED NOT NULL           -- Tenure in months
);

-- Create the Services Table
CREATE TABLE Services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    phone_service TINYINT(1) NOT NULL,          -- Boolean for phone service
    multiple_lines ENUM('No', 'Yes', 'No phone service') NOT NULL,
    internet_service ENUM('DSL', 'Fiber optic', 'No') NOT NULL,
    online_security ENUM('No', 'Yes', 'No internet service') NOT NULL,
    online_backup ENUM('No', 'Yes', 'No internet service') NOT NULL,
    device_protection ENUM('No', 'Yes', 'No internet service') NOT NULL,
    tech_support ENUM('No', 'Yes', 'No internet service') NOT NULL,
    streaming_tv ENUM('No', 'Yes', 'No internet service') NOT NULL,
    streaming_movies ENUM('No', 'Yes', 'No internet service') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Billing Table
CREATE TABLE Billing (
    billing_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    contract ENUM('Month-to-month', 'One year', 'Two year') NOT NULL,
    paperless_billing TINYINT(1) NOT NULL,
    payment_method ENUM('Electronic check', 'Mailed check', 'Bank transfer', 'Credit card') NOT NULL,
    monthly_charges DECIMAL(10,2) NOT NULL,     -- Monthly charges for the customer
    total_charges DECIMAL(10,2) NOT NULL,       -- Total charges for the customer
    churn TINYINT(1) NOT NULL,                  -- Boolean field for churn status
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

