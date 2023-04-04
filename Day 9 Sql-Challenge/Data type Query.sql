 How many movies contain the special feature of 'Behind the Scences'?
 
 SELECT COUNT(*) FROM film WHERE 'Behind the Scenes'=ANY(special_features)