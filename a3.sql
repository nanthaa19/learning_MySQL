CREATE TABLE timestamp_n_datetime (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ts TIMESTAMP,
    dt DATETIME
);
use veltraining;
INSERT INTO timestamp_n_datetime(ts,dt)VALUES(NOW(),NOW());

SET time_zone = '+00:00';
SELECT 
    *
FROM
    timestamp_n_datetime;
SET time_zone = '+03:00';

SELECT 
    *
FROM
    timestamp_n_datetime;

set @ramp := now();
set @ti = now();
set @rakesh = 456;
SELECT @ramp, @rakesh, @ti;
SELECT DATE(@ti);
SELECT QUARTER('2016-12-2');
SELECT DATE_FORMAT(@ti, '%H:%i;%s:%p- %W : %M : %Y');

select DATE_FORMAT(NOW(),'%b %d %Y %h:%i %p');
select now();

CREATE TABLE datediff_test (
    dt DATETIME
);
INSERT INTO datediff_test(dt)
VALUES('2010-04-30 07:27:39'),
 ('2010-05-17 22:52:21'),
 ('2010-05-18 01:19:10'),
 ('2010-05-22 14:17:16'),
 ('2010-05-26 03:26:56'),
 ('2010-06-10 04:44:38'),
 ('2010-06-13 13:55:53');
 set time_zone = '+05:30';
 
 SELECT 
    dt, DATEDIFF(NOW(), dt)
FROM
    datediff_test;
    
SELECT NOW();

SELECT CURRENT_TIME(), uTC_TIME();