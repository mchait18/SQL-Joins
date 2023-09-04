-- write your queries here
 --Join the two tables so that every column and record appears, regardless of if there is not an owner_id . Your output should look like this:
 SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;
 --Count the number of cars for each owner. Display the owners first_name , last_name and count of vehicles. The first_name should be ordered in ascending order. Your output should look like this:
  SELECT first_name, last_name, COUNT(*) AS count FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name, o.last_name ORDER BY first_name;
  --Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name , last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. Your output should look like this:
  SELECT first_name, last_name, AVG(v.price) AS average_price, COUNT(*) AS count FROM owners o JOIN vehicles v ON o.id = v.owner_id 
  GROUP BY o.first_name, o.last_name HAVING COUNT(*) > 1 AND AVG(v.price) > 10000 ORDER BY first_name DESC;