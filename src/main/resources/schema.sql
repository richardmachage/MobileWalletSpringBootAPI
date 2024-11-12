CREATE TABLE customers (
                           customer_id VARCHAR(20) PRIMARY KEY,
                           first_name VARCHAR(50) NOT NULL,
                           last_name VARCHAR(50) NOT NULL,
                           email VARCHAR(100) UNIQUE NOT NULL,
                           pin CHAR(4) NOT NULL
);

CREATE TABLE accounts (
                          account_no VARCHAR(20) PRIMARY KEY,
                          customer_id VARCHAR(20) NOT NULL,
                          balance DECIMAL(15, 2) DEFAULT 0.0
);
CREATE TABLE transactions (
                              transaction_id VARCHAR(20) PRIMARY KEY,
                              customer_id VARCHAR(20) NOT NULL,
                              account_no VARCHAR(20) NOT NULL,
                              amount DECIMAL(15, 2) NOT NULL,
                              transaction_type VARCHAR(10),
                              debit_or_credit VARCHAR(10) CHECK (debit_or_credit IN ('Debit', 'Credit')),
                              balance DECIMAL(15, 2) NOT NULL
);
