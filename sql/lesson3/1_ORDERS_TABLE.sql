CREATE TABLE ORDERS(

  ID NUMBER,
  CONSTRAINT ORDER_PK PRIMARY KEY (ID),
  PRODUCT_NAME NVARCHAR2(20),
  PRICE NUMBER,
  DATE_ORDERED TIMESTAMP,
  DATE_CONFIRMED TIMESTAMP
);

INSERT INTO ORDERS
VALUES(1001, 'test1', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1002, 'test2', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1003, 'test3', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1004, 'test4', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1005, 'test5', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1006, 'test6', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1007, 'test7', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1008, 'test8', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1009, 'test9', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO ORDERS
VALUES(1010, 'test10', 100,  TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') , TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss'));

INSERT INTO PRODUCT
VALUES(1001, 'test1', 'test1',  10);
INSERT INTO PRODUCT
VALUES(1002, 'test2', 'test1',  20);
INSERT INTO PRODUCT
VALUES(1003, 'test3', 'test1',  30);
INSERT INTO PRODUCT
VALUES(1004, 'test4', 'test1',  40);
INSERT INTO PRODUCT
VALUES(1005, 'test5', 'test1',  50);
INSERT INTO PRODUCT
VALUES(1006, 'test6', 'test1',  60);
INSERT INTO PRODUCT
VALUES(1007, 'test7', 'test1',  70);
INSERT INTO PRODUCT
VALUES(1008, 'test8', 'test1',  80);
INSERT INTO PRODUCT
VALUES(1009, 'test9', 'test1',  90);
INSERT INTO PRODUCT
VALUES(1010, 'test10', 'test1',  100);

SELECT * FROM PRODUCT WHERE COST_PRICE = 50 AND NAME = 'toy123';
SELECT * FROM PRODUCT WHERE ID = 1005  OR COST_PRICE < 50;
SELECT * FROM PRODUCT WHERE ID > 1005 AND MANUFACTURER_NAME = 'sameManufacturer' ;
SELECT * FROM PRODUCT; --ALL

INSERT INTO PRODUCT
VALUES(1001, 'candy', 'test1',  50);
INSERT INTO PRODUCT
VALUES(1002, 't-shirt', 'china11',  42);
INSERT INTO PRODUCT
VALUES(1003, 'candy', 'test1',  50);

UPDATE PRODUCT SET MANUFACTURER_NAME = 'china' WHERE NAME = 't-shirt';



DELETE FROM PRODUCT
WHERE ID <  1050;