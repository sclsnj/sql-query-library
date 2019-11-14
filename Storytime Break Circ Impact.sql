SELECT TRUNC(jts.todate(tx.systemtimestamp),'IYYY') as year, TRUNC(jts.todate(tx.systemtimestamp),'IW') as week, 
    COUNT(tx.systemtimestamp) as circ
FROM
    (select systemtimestamp
    from txlog_v
    where envbranch = 3
    and itemlocation in (100,33,35,36,45,38,40,39,41,43,44,49,48,50,51,52,53,55,54,34,56,37,57,46,58,42,47)
    and transactiontype = 'CH'
    and jts.todate(systemtimestamp) > '27-AUG-18' and jts.todate(systemtimestamp) < '02-SEP-19') tx
GROUP BY trunc(jts.todate(tx.systemtimestamp),'IYYY'), trunc(jts.todate(tx.systemtimestamp),'IW');
