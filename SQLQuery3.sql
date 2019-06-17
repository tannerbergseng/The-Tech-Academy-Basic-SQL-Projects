/**7**/ CREATE TABLE tbl_name (
				name_id INT IDENTITY (400,1) NOT NULL,
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
		job_id INT IDENTITY (500,1) NOT NULL,
		job_title CHAR(50)  NULL,
		job_adress CHAR(50)  NULL
);

INSERT INTO tbl_job
	(job_title, job_adress)
	VALUES 
	('delivery boy','planet express'),
	('captain','planet express'),
	('bending unit', 'planet express'),
	('bureaucrat', 'planet express')
	;
	
	SELECT * FROM tbl_job
	
	
	
	SELECT 
		name_fName as 'First Name:', name_lName as 'Last Name:', job_title as 'Job Title:', 
		job_adress as 'Adress:'
		FROM tbl_name
		INNER JOIN tbl_job ON job_id = job_title
		;
		