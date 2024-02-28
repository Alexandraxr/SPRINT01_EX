#NIVELL1
#EX2.Has d'obtenir el nom, email i país de cada companyia,ordena les dades en funció del nom de les companyies.
SELECT company_name,email,country
FROM company
ORDER BY company_name;

#EX3.Des de la secció de màrqueting et sol·liciten que els passis un llistat dels països que estan fent compres.

SELECT country
FROM company
INNER JOIN transaction 
ON company.id = transaction.company_id
GROUP BY country;

#EX4.Des de màrqueting també volen saber des de quants països es realitzen les compres.

SELECT count(distinct country) as numCountry
FROM company
INNER JOIN transaction 
ON company.id = transaction.company_id;

#EX5.El teu cap identifica un error amb la companyia que té aneu 'b-2354'. Per tant, et sol·licita que li indiquis el país i nom de companyia d'aquest aneu. 

SELECT country, company_name
FROM company
where company.id = 'b-2354';

#EX6.A més, el teu cap et sol·licita que indiquis quina és la companyia amb major despesa mitjana?

SELECT company_name, avg(amount)
FROM company
INNER JOIN transaction
ON company.id=transaction.company_id
group by company_name
order by avg(amount) DESC
limit 1;


