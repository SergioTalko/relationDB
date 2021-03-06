CREATE TABLE ORDER1 (
  ID         NUMBER CHECK (ID < 10000),
  CONSTRAINT ORDER1_PK PRIMARY KEY (ID),
  USER_ID    NUMBER UNIQUE NOT NULL,
  ROOM_ID    NUMBER UNIQUE NOT NULL,
  DATE_FROM  DATE          NOT NULL,
  DATE_TO    DATE          NOT NULL,
  MONEY_PAID NUMBER(*,2)

);