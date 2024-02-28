#NIVELL2
#EX1.El teu cap està redactant un informe de tancament de l'any i et sol·licita que li enviïs informació rellevant per al document. Per a això et sol·licita verificar si en la base de dades existeixen companyies amb identificadors (aneu) duplicats.
SELECT id, COUNT(id)
FROM company
GROUP BY id
HAVING COUNT(id) > 1;


#EX2.En quin dia es van realitzar les cinc vendes més costoses? Mostra la data de la transacció i la sumatòria de la quantitat de diners. 

SELECT date(timestamp) as DataTransaccio , sum(amount) as amount
FROM transaction 
GROUP BY date(timestamp)
ORDER BY sum(amount) DESC
LIMIT 5; 

#EX3.En quin dia es van realitzar les cinc vendes de menor valor? Mostra la data de la transacció i la sumatòria de la quantitat de diners. 

SELECT date(timestamp) as DataTransaccio , sum(amount) as amount
FROM transaction 
GROUP BY date(timestamp)
ORDER BY sum(amount) ASC
LIMIT 5; 
 


#EX4.Quina és la mitjana de despesa per país? Presenta els resultats ordenats de major a menor mitjà.

SELECT avg(amount), company_name
FROM transaction
INNER JOIN company 
ON company.id= transaction.company_id
GROUP BY company_name
order by 1 DESC;


