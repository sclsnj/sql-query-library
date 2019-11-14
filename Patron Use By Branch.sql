-- Transactions per branch by Bound Brook patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BOUND BROOK' OR p.city2 = 'BOUND BROOK'
    OR (u.fieldid = 1 AND numcode = 4))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Branchburg patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BRANCHBURG' OR p.city2 = 'BRANCHBURG'
    OR (u.fieldid = 1 AND numcode = 5))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Bridgewater patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BRIDGEWATER' OR p.city2 = 'BRIDGEWATER'
    OR (u.fieldid = 1 AND numcode = 6))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Green Brook patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'GREEN BROOK' OR p.city2 = 'GREEN BROOK'
    OR (u.fieldid = 1 AND numcode = 12))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Hillsborough patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'HILLSBOROUGH' OR p.city2 = 'HILLSBOROUGH'
    OR (u.fieldid = 1 AND numcode = 13))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Manville patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'MANVILLE' OR p.city2 = 'MANVILLE'
    OR (u.fieldid = 1 AND numcode = 14))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Millstone patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'MILLSTONE' OR p.city2 = 'MILLSTONE'
    OR (u.fieldid = 1 AND numcode = 15))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Montgomery patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'MONTGOMERY' OR p.city2 = 'MONTGOMERY'
    OR (u.fieldid = 1 AND numcode = 16))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by North Plainfield patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'NORTH PLAINFIELD' OR p.city2 = 'NORTH PLAINFIELD'
    OR (u.fieldid = 1 AND numcode = 17))
    AND t.transactiontype = 'CH'
   AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Peapack-Gladstone patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'PEAPACK' OR p.city2 = 'PEAPACK' OR city1 = 'GLADSTONE' OR city2 = 'GLADSTONE'
    OR (u.fieldid = 1 AND numcode IN (11, 19)))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Rocky Hill patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'ROCKY HILL' OR p.city2 = 'ROCKY HILL'
    OR (u.fieldid = 1 AND numcode = 23))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

SELECT patronid, bty
FROM patron_v
WHERE (REGEXP_INSTR(city1, '(Rocky +Hill)|(ROCKY +HILL)') = 1 OR REGEXP_INSTR(city2, '(Rocky +Hill)|(ROCKY +HILL)') = 1)
AND bty NOT IN (12,13,14)
AND (jts.todate(actdate) > '01-JAN-2015' OR jts.todate(sactdate) > '01-JAN-2015' OR jts.todate(editdate) > '01-JAN-2015');

-- Transactions per branch by Somerville patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'SOMERVILLE' OR p.city2 = 'SOMVERVILLE'
    OR (u.fieldid = 1 AND numcode = 24))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by South Bound Brook patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'SOUTH BOUND BROOK' OR p.city2 = 'SOUTH BOUND BROOK'
    OR (u.fieldid = 1 AND numcode = 25))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Warren patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'WARREN' OR p.city2 = 'WARREN'
    OR (u.fieldid = 1 AND numcode = 26))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Watchung patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'WATCHUNG' OR p.city2 = 'WATCHUNG'
    OR (u.fieldid = 1 AND numcode = 27))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;





-- Bound Brook patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BOUND BROOK' OR p.city2 = 'BOUND BROOK'
OR (u.fieldid = 1 AND u.numcode = 4))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 1;

-- Branchburg patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BRANCHBURG' OR p. city2 = 'BRANCHBURG'
OR (u.fieldid = 1 AND u.numcode = 5))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Bridgewater patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BRIDGEWATER' OR p.city2 = 'BRIDGEWATER'
OR (u.fieldid = 1 AND u.numcode = 6))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 3;

-- Green Brook patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'GREEN BROOK' OR p. city2 = 'GREEN BROOK'
OR (u.fieldid = 1 AND u.numcode = 12))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Hillsborough patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'HILLSBOROUGH' OR p.city2 = 'HILLSBOROUGH'
OR (u.fieldid = 1 AND u.numcode = 13))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 5;

-- Manville patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'MANVILLE' OR p.city2 = 'MANVILLE'
OR (u.fieldid = 1 AND u.numcode = 14))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 5;

-- Millstone patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'MILLSTONE' OR p. city2 = 'MILLSTONE'
OR (u.fieldid = 1 AND u.numcode = 15))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Montgomery patrons who use other libraries than MJL
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'MONTGOMERY' OR p.city2 = 'MONTGOMERY'
OR (u.fieldid = 1 AND u.numcode = 16))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 6;

-- North Plainfield patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'NORTH PLAINFIELD' OR p.city2 = 'NORTH PLAINFIELD'
OR (u.fieldid = 1 AND u.numcode = 17))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 7;

-- Peapack-Gladstone patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'PEAPACK' OR p.city2 = 'PEAPACK' OR p.city1 = 'GLADSTONE' OR p.city2 = 'GLADSTONE'
OR (u.fieldid = 1 AND u.numcode IN (11, 19)))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 8;

-- Rocky Hill patrons who use other libraries than MJL
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'ROCKY HILL' OR p.city2 = 'ROCKY HILL'
OR (u.fieldid = 1 AND u.numcode = 23))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 6;

-- Somerville patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'SOMERVILLE' OR city2 = 'SOMERVILLE'
OR (u.fieldid = 1 AND u.numcode = 24))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 9;

-- South Bound Brook patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'SOUTH BOUND BROOK' OR p. city2 = 'SOUTH BOUND BROOK'
OR (u.fieldid = 1 AND u.numcode = 25))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Warren patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'WARREN' OR p.city2 = 'WARREN'
OR (u.fieldid = 1 AND u.numcode = 26))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 10;

-- Watchung patrons who use other libraries
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'WATCHUNG' OR p. city2 = 'WATCHUNG'
OR (u.fieldid = 1 AND u.numcode = 27))
AND jts.todate(tx.systemtimestamp) > sysdate - 180
AND tx.transactiontype = 'CH'
AND tx.envbranch <> 11;



-- Transactions per branch by Bedminster patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BEDMINSTER' OR p.city2 = 'BEDMINSTER'
    OR (u.fieldid = 1 AND numcode = 1))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Bernards Township patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BASKING RIDGE' OR p.city2 = 'BASKING RIDGE' OR p.city1 = 'LYONS' OR p.city2 = 'LYONS'
        OR p.city1 = 'LIBERTY CORNER' OR p.city2 = 'LIBERTY CORNER'
    OR (u.fieldid = 1 AND numcode = 2))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Bernardsville patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'BERNARDSVILLE' OR p.city2 = 'BERNARDSVILLE'
    OR (u.fieldid = 1 AND numcode = 3))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Far Hills patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'FAR HILLS' OR p.city2 = 'FAR HILLS'
    OR (u.fieldid = 1 AND numcode = 9))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Franklin patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'SOMERSET' OR p.city2 = 'SOMERSET' OR p.city1 = 'FRANKLIN' OR p.city2 = 'FRANKLIN'
        OR p.city1 = 'FRANKLIN PARK' OR p.city2 = 'FRANKLIN PARK'
    OR (u.fieldid = 1 AND numcode = 10))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;

-- Transactions per branch by Raritan patrons
SELECT c.envbranch, COUNT(c.patronid) as count
FROM (SELECT UNIQUE t.patronid, t.envbranch
    FROM txlog_v t, patron_v p, udfpatron_v u
    WHERE p.patronid = t.patronid
    AND p.patronid = u.patronid
    AND (p.city1 = 'RARITAN' OR p.city2 = 'RARITAN'
    OR (u.fieldid = 1 AND numcode = 22))
    AND t.transactiontype = 'CH'
    AND jts.todate(t.systemtimestamp) > sysdate - 180) c
GROUP BY c.envbranch
ORDER BY c.envbranch;


-- Bedminster patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BEDMINSTER' OR p.city2 = 'BEDMINSTER'
OR (u.fieldid = 1 AND u.numcode = 1))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Bernards Township patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BASKING RIDGE' OR p.city2 = 'BASKING RIDGE' OR p.city1 = 'LYONS' OR p.city2 = 'LYONS'
        OR p.city1 = 'LIBERTY CORNER' OR p.city2 = 'LIBERTY CORNER'
OR (u.fieldid = 1 AND u.numcode = 2))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Bernardsville patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'BERNARDSVILLE' OR p.city2 = 'BERNARDSVILLE'
OR (u.fieldid = 1 AND u.numcode = 3))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Far Hills patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'FAR HILLS' OR p.city2 = 'FAR HILLS'
OR (u.fieldid = 1 AND u.numcode = 9))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Franklin patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'SOMERSET' OR p.city2 = 'SOMERSET' OR p.city1 = 'FRANKLIN' OR p.city2 = 'FRANKLIN'
        OR p.city1 = 'FRANKLIN PARK' OR p.city2 = 'FRANKLIN PARK'
OR (u.fieldid = 1 AND u.numcode = 10))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;

-- Raritan patrons who use SCLSNJ
SELECT COUNT(UNIQUE tx.patronid)
FROM txlog_v tx, patron_v p, udfpatron_v u
WHERE tx.patronid = p.patronid
AND p.patronid = u.patronid
AND (p.city1 = 'RARITAN' OR p. city2 = 'RARITAN'
OR (u.fieldid = 1 AND u.numcode = 22))
AND tx.transactiontype = 'CH'
AND jts.todate(tx.systemtimestamp) > sysdate - 180;


-- ALL patrons who use SCLSNJ
SELECT COUNT(UNIQUE patronid)
FROM txlog_v
WHERE transactiontype = 'CH'
AND jts.todate(systemtimestamp) > '01-AUG-2018';

-- Patrons with active checkouts
SELECT COUNT(UNIQUE p.patronid)
FROM patron_v p, txlog_v tx, item_v i
WHERE tx.patronid = p.patronid
AND tx.item = i.item
AND i.status = 'C';

SELECT COUNT(UNIQUE patronid)
FROM
(SELECT item, jts.todate(systemtimestamp) as transitdate, patronid
FROM
    (SELECT i.item, t.systemtimestamp, t.patronid,
        (MAX(t.systemtimestamp) OVER(PARTITION BY i.item)) AS maxtransitdate
    FROM item_v i, txlog_v t
    WHERE i.status IN ('C')
    AND t.transactiontype = 'CH'
    AND i.item = t.item
    AND t.envbranch IS NOT NULL)
WHERE systemtimestamp = maxtransitdate);
