#NIVELL 3
#EX1.Presenta el nom, telèfon i país de les companyies, juntament amb la quantitat total gastada, d'aquelles que van realitzar transaccions amb una despesa compresa entre 100 i 200 euros. Ordena els resultats de major a menor quantitat gastada. 

SELECT company_name, phone, country, sum(amount) as QuantGastada
FROM company
INNER JOIN transaction
ON company.id= transaction.company_id
GROUP BY company_name , phone, country 
HAVING sum(amount) between 100 and 200
ORDER BY sum(amount) DESC; 

#EX2.Indica el nom de les companyies que van fer compres el 16 de març del 2022, 28 de febrer del 2022 i 13 de febrer del 2022. 

SELECT company_name
FROM company
INNER JOIN transaction
ON company.id= transaction.company_id
WHERE date(timestamp) like "2022-03-16" OR "2022-02-28" OR "2022-02-13"
GROUP BY company_name ;