SELECT 
    c15 AS Category,                                    -- Δείχνει την κατηγορία
    ROUND(SUM(CAST(c18 AS REAL)), 2) AS total_sales,    -- Βρίσκει το σύνολο των πωλήσεων
    ROUND(SUM(CAST(c21 AS REAL)), 2) AS total_profit    -- Βρίσκει το σύνολο του κέρδους
FROM SampleSuperstore                                   -- Από ποιον πίνακα παίρνει τα δεδομένα
WHERE c1 != 'Row ID'                                    -- Αφαιρεί τυχόν γραμμή τίτλων
GROUP BY c15                                            -- Ομαδοποιεί τα αποτελέσματα ανά κατηγορία
ORDER BY total_sales DESC;                              -- Ταξινομεί από τις μεγαλύτερες πωλήσεις στις μικρότερες


SELECT 
    c16 AS Sub_Category,                                -- Δείχνει την υποκατηγορία
    ROUND(SUM(CAST(c18 AS REAL)), 2) AS total_sales,    -- Βρίσκει το σύνολο των πωλήσεων
    ROUND(SUM(CAST(c21 AS REAL)), 2) AS total_profit    -- Βρίσκει το σύνολο του κέρδους
FROM SampleSuperstore                                   -- Από ποιον πίνακα παίρνει τα δεδομένα
WHERE c1 != 'Row ID'                                    -- Αφαιρεί τυχόν γραμμή τίτλων
GROUP BY c16                                            -- Ομαδοποιεί τα αποτελέσματα ανά υποκατηγορία
ORDER BY total_profit ASC                               -- Ταξινομεί από το μικρότερο κέρδος στο μεγαλύτερο (αύξουσα σειρά)
LIMIT 5;                                                -- Εμφανίζει μόνο τα 5 πρώτα αποτελέσματα