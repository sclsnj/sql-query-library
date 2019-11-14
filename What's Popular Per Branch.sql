SELECT COUNT(t.item), t.itembid, b.title, b.author, f.formattext, t.envbranch
FROM txlog_v t
JOIN bbibmap_v b
ON t.itembid = b.bid
JOIN formatterm_v f
ON b.format = f.formattermid
WHERE t.envbranch = 12
AND t.transactiontype = 'CH'
AND jts.todate(t.systemtimestamp) > sysdate - 180 AND jts.todate(t.systemtimestamp) <= sysdate
AND b.format <> 47
GROUP BY t.itembid, b.title, b.author, f.formattext, t.envbranch
ORDER BY COUNT(t.item) DESC;


SELECT COUNT(t.item), t.itembid, b.title, b.author
FROM txlog_v t
JOIN bbibmap_v b
ON t.itembid = b.bid
WHERE t.transactiontype = 'CH'
AND jts.todate(t.systemtimestamp) > ADD_MONTHS(sysdate, -1) AND jts.todate(t.systemtimestamp) < sysdate
AND b.format <> 47
AND t.itemmedia IN (6,8,9,12,20,21,25,26,28,40,42,50,52)
GROUP BY t.itembid, b.title, b.author
ORDER BY COUNT(t.item) DESC
FETCH FIRST 25 ROWS ONLY;

/*
SELECT COUNT(systemtimestamp), title.bid, title.title, title.author
FROM transactions
WHERE transactiontype = 'CH'
AND systemtimestamp BETWEEN ...dates...
AND title.format <> 47
AND item.media.medianumber IN (6,8,9,12,20,21,25,26,28,40,42,50,52)
AND envbranch.branchnumber = item.owningbranch.branchnumber
*/


-- what has a crap ton of holds
SELECT  h.count, h.bid, b.title, b.author
FROM 
    (SELECT bid, count(occur) as count
    FROM transbid_v
    WHERE transcode in ('R*')
    GROUP BY bid
    ORDER BY count(occur) DESC) h
JOIN bbibmap_v b
ON h.bid = b.bid
WHERE b.format = 70;
