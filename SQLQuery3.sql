USE db_zoo

/***drill***/
	/**1**/ SELECT * FROM tbl_habitat;

	/**2**/SELECT * FROM tbl_species WHERE species_order = 3;

	/**3**/ SELECT * FROM tbl_nutrition WHERE nutrition_cost <= 600.00

	/**4**/	SELECT 
		species_name as 'Name:', species_nutrition as 'Nutrition:', nutrition_id as 'nutrition id:'
		FROM tbl_species
		INNER JOIN tbl_nutrition ON nutrition_id = nutrition_id
		WHERE nutrition_id BETWEEN 2202 AND 2206
	;
	

	
	/**5**/SELECT
		a1.species_name as 'Name:', a2.habitat_type as 'Habitat:', a2.habitat_cost as 'Monthly cost:',
		a3.nutrition_type as 'Nutrition:', a3.nutrition_cost 'Monthly cost:'
		FROM tbl_species a1
		INNER JOIN tbl_habitat a2 ON a2.habitat_id = a1.species_habitat
		INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
	;
	
	SELECT * FROM tbl_species
	SELECT * FROM tbl_habitat
	SELECT * FROM tbl_nutrition

	/**6**/SELECT 
		specialist_fname as 'First Name:', specialist_lname as 'Last Name:', specialist_contact as 'Contact:'
		FROM tbl_specialist
		INNER JOIN tbl_care  ON specialist_id = care_specialist
		INNER JOIN tbl_species ON care_id = species_care
		WHERE species_name = 'penguin'
	

	SELECT * FROM tbl_specialist
	SELECT * FROM tbl_care
	SELECT * FROM tbl_species

	/**7**/ CREATE TABLE tbl_name (
				name_id INT PRIMARY KEY NOT NULL IDENTITY (400,1) ,
				name_fName CHAR(50)  NULL,
				name_lName CHAR(50)  NULL
	);

	
	
	SET IDENTITY_INSERT tbl_name ON
	INSERT INTO tbl_name
		(name_fName, name_lName)
		VALUES 
		('Phillip', 'Fry'),
		('Turanga', 'Leela'),
		('Bender', 'Rodríguez'),
		('Hermes', 'Conrad')
		;

		SELECT * FROM tbl_name

	CREATE TABLE tbl_job (
		job_id INT NOT NULL IDENTITY (500,1) ,
		job_title CHAR(50)  NULL,
		job_address CHAR(50)  NULL,
		jobname_id INT NULL FOREIGN KEY REFERENCES tbl_name (name_id)
);

INSERT INTO tbl_job
	(job_title, job_address, jobname_id)
	VALUES 
	('delivery boy','planet express',400),
	('captain','planet express',401),
	('bending unit', 'planet express',402),
	('bureaucrat', 'planet express',403)
	;
	
	SELECT * FROM tbl_job
	SELECT * FROM tbl_name

		SELECT 
		name_fName as 'First Name:', name_lName as 'Last Name:', name_id as 'name id:',
		job_title as 'position:', job_address as 'address:'
		FROM tbl_name
		INNER JOIN tbl_job ON jobname_id = name_id
	;
	

