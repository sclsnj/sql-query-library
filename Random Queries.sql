-- DVD titles that have had new items added to them in the last 30 days that have a publishing date of 2017, 2018 or 2019
select unique(b.bid), b.title, f.formattext, b.publishingdate, b.isbn, b.upc
from item_v i 
left join bbibmap_v b on b.bid = i.bid
left join formatterm_v f on b.format = f.formattermid
where media in (2,3,4,5,15,17,19,43,48,49,101,105,106,107,108)
and jts.todate(i.creationdate) > sysdate - 90
and b.publishingdate in ('2017','2018','2019');

-- CD titles that have had new items added to them in the last 90 days that have a publishing date of 2017, 2018 or 2019
select unique(b.bid), b.title, f.formattext, b.publishingdate, b.isbn, b.upc
from item_v i 
left join bbibmap_v b on b.bid = i.bid
left join formatterm_v f on b.format = f.formattermid
where media in (11,24)
and jts.todate(i.creationdate) > sysdate - 90
and b.publishingdate in ('2017','2018','2019');

-- Circ by BID at NPLAIN for June, July, August
select count(item)
from txlog_v
where itembid = 9371 and envbranch = 7
and transactiontype = 'CH' and jts.todate(systemtimestamp) > '01-JUN-19' and jts.todate(systemtimestamp) < '01-JUL-19';

-- Audiobook titles that have had new items added to them in the last 90 days that have a publishing date of 2017, 2018 or 2019
select unique(b.bid), b.title, f.formattext, b.publishingdate, b.isbn, b.upc
from item_v i 
left join bbibmap_v b on b.bid = i.bid
left join formatterm_v f on b.format = f.formattermid
where media in (1,14,47)
and jts.todate(i.creationdate) > sysdate - 90
and b.publishingdate in ('2017','2018','2019');

-- Annual app circ through September 2019
select count(systemtimestamp)
from txlog_v
where envbranch = 14 and transactiontype = 'CH'
and jts.todate(systemtimestamp) > '01-JAN-19' and jts.todate(systemtimestamp) < '01-OCT-19';

-- Patrons with a Warren address
select count(patronid)
from patron_v
where (regexp_like(city1, 'warren', 'i') or regexp_like(city2, 'warren', 'i'))
and bty <> 12;

-- Warren patrons with use in the last year
select count(patronid)
from patron_v
where (regexp_like(city1, 'warren', 'i') or regexp_like(city2, 'warren', 'i'))
and bty <> 12
and (jts.todate(actdate) > sysdate - 365 or jts.todate(sactdate) > sysdate - 365);

-- Patrons with a checkout at Warren in the last year
select count(patronid)
from
    (SELECT UNIQUE patronid
    FROM txlog_v
    where transactiontype = 'CH'
    and jts.todate(systemtimestamp) > sysdate - 365
    and envbranch = 10);
