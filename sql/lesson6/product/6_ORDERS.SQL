CREATE TABLE ORDERS(
  ORDER_ID NUMBER,
  CONSTRAINT ORDERS_PK PRIMARY KEY (ORDER_ID),
  CUSTOMER_ID NUMBER,
  CONSTRAINT CUSTOMER_ORDER_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
  EMPLOYEE_ID NUMBER,
  CONSTRAINT EMPLOYEE_ORDER_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
  ORDER_DATE TIMESTAMP,
  REQUIRED_DATE TIMESTAMP,
  SHIPPED_DATE TIMESTAMP,
  SHIP_VIA NVARCHAR2(50),
  FREIGHT NVARCHAR2(50),
  SHIP_NAME NVARCHAR2(50),
  SHIP_ADRESS NVARCHAR2(100),
  SHIP_CITY NVARCHAR2(50),
  SHIP_REGION NVARCHAR2(50),
  SHIP_POSTAL_CODE NUMBER,
  SHIP_COUNTRY NVARCHAR2(50)
);