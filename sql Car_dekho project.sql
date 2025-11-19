SELECT * FROM cars.car_dekho;
use cars;
-- READ DATA--
select*from Car_dekho;
-- Total cars: To get a count of Total records--
select count(*) from Car_dekho;
-- The manager asked the employee How many cars will be available in 2023?--
select count(*) from Car_dekho where year = 2023;
-- The manager asked the employee How many cars is available in 2020,2021,2022--
select count(*) from Car_dekho where year = 2020; #74
select count(*) from Car_dekho where year = 2021; #7
select count(*) from Car_dekho where year = 2022; #7
-- GROUP BY--
select count(*) from Car_dekho where year in (2020,2021,2022) group by year;
-- client asked me to print the total of all cars by year. I don't see all the details.--
select year, count(*) from Car_dekho group by year;
-- client asked to car dealer agent How many diesel cars will there in 2020?--
select count(*) from Car_dekho where year = 2020 and fuel = "diesel";
-- client requested  a car dealer agent How many petrol cars will there be in 2020?--
select count(*) from Car_dekho where year = 2020 and fuel = "petrol";
-- The manager told the employee to give a print All the fuel cars (petrol,diesel, and CNG) come by all year.--
select year, count(*) from Car_dekho where fuel = "petrol" group by year;
select year, count(*) from Car_dekho where fuel = "diesel" group by year;
select year, count(*) from Car_dekho where fuel = "CNG" group by year;
-- manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from Car_dekho group by year having count(*)>100;
select year, count(*) from Car_dekho group by year having count(*)<50;
-- The manager said to the emeploye All cars count details between 2015 and 2023; we need a complete list.--
select count(*) from Car_dekho where year between 2015 and 2023;
-- The manager  said to the employee All cars details between 2015 to 2023 we need complete list--
select*from Car_dekho where year between 2015 and 2023;
--End--

