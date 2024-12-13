SELECT * FROM cd.facilities

SELECT name, membercost
FROM cd.facilities

SELECT * FROM cd.facilities
WHERE membercost > 0

SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0
AND membercost < (monthlymaintenance / 50) 

SELECT *
FROM cd.facilities 
WHERE name ILIKE '%tennis%'

SELECT *
FROM cd.facilities 
WHERE facid IN (1,5)

SELECT memid, surname, firstname, joindate 
FROM cd.members
WHERE joindate > '2012-09-01'


SELECT DISTINCT(surname)
FROM cd.members
ORDER BY surname 
LIMIT 10;

SELECT *
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10;

SELECT facid, SUM(slots)
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots)

SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid

SELECT b.starttime, f.name
FROM cd.bookings AS b
INNER JOIN cd.facilities AS f
ON b.facid = f.facid
WHERE b.starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND f.name ILIKE '%tennis court%'
ORDER BY b.starttime


SELECT b.starttime, m.memid
FROM cd.bookings AS b
INNER JOIN cd.members AS m
ON b.memid = m.memid
WHERE m.firstname = 'David'
AND m.surname = 'Farrell'

