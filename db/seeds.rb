# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Department.create(name: 'Engineering')
Department.create(name: 'Information Technology')
Department.create(name: 'Product Design')
Department.create(name: 'Product Management')
Department.create(name: 'Sales')
Department.create(name: 'Human Resources')
Department.create(name: 'Support')
Department.create(name: 'Executive Management')
Department.create(name: 'Finance')

Location.create(name: 'Headquarters', address: '1 Market Street', address2: 'Third Floor', city: 'San Francisco', state: 'CA', zip: '94103')
Location.create(name: 'East Coast Sales Office', address: '10 Madison Avenue', address2: 'Ste 110', city: 'New York', state: 'NY', zip: '10005')
Location.create(name: 'San Jose Office', address: '100 San Tomas Expressway', city: 'San Jose', state: 'CA', zip: '95101')
Location.create(name: 'Midwest Sales Office', address: '100 Michigan Ave', address2: '10th Floor', city: 'Chicago', state: 'IL', zip: '60290')
Location.create(name: 'Seattle Office', address: '100 Main St', city: 'Bellevue', state: 'WA', zip: '98005')

# CEO
Employee.create(firstname: 'Bob', lastname: 'Smith', phone: '(415) 333-2222', email: 'bob.smith@company.com', office_number: 'A101', title: 'CEO',
password: 'bobceo', password_confirmation: 'bobceo', department_id: 8, location_id: 1, manager: true)

# Sales leadership
Employee.create(firstname: 'Dave', lastname: 'Jones', phone: '(212) 555-9494', email: 'dave.jones@company.com', office_number: 'A110',
title: 'VP of Sales', password: 'davevp', password_confirmation: 'davevp', manager_id: 1, department_id: 5, location_id: 2, manager: true)
Employee.create(firstname: 'Angie', lastname: 'Kim', phone: '(212) 456-4321', email: 'angie.kim@company.com', office_number: 'A112',
title: 'Director, East Coast Sales', password: 'angiedirector', password_confirmation: 'angiedirector', manager_id: 2, department_id: 5,
location_id: 2, manager: true)
Employee.create(firstname: 'Tom', lastname: 'Johnson', phone: '(415) 666-7777', email: 'tom.johnson@company.com', office_number: 'A115',
title: 'Director, West Coast Sales', password: 'tomdirector', password_confirmation: 'tomdirector', manager_id: 2, department_id: 5,
location_id: 1, manager: true)
Employee.create(firstname: 'Susan', lastname: 'Thompson', phone: '(312) 666-5432', email: 'susan.thompson@company.com', office_number: 'A10',
title: 'Director, Midwest Sales', password: 'susandirector', password_confirmation: 'susandirector', manager_id: 2, department_id: 5, location_id: 4,
manager: true)

# IT leadership
Employee.create(firstname: 'Darla', lastname: 'Ly', phone: '(415) 403-9594', email: 'darla.ly@company.com', office_number: 'C100',
title: 'VP, IT', password: 'darlavp', password_confirmation: 'darlavp', manager_id: 1, department_id: 2, location_id: 1, manager: true)
Employee.create(firstname: 'Arjun', lastname: 'Bandi', phone: '(415) 605-4050', email: 'arjun.bandi@company.com', office_number: 'C101',
title: 'Director, Networks', password: 'arjundirector', password_confirmation: 'arjundirector', manager_id: 6, department_id: 2, location_id: 1,
manager: true)
Employee.create(firstname: 'Claudia', lastname: 'Lopez', phone: '(415) 493-9596', email: 'claudia.lopez@company.com', office_number: 'C102',
title: 'Director, Databases', password: 'claudiadirector', password_confirmation: 'claudiadirector', manager_id: 6, department_id: 2,
location_id: 1, manager: true )
Employee.create(firstname: 'Leila', lastname: 'Clark', phone: '(415) 403-0594', email: 'leila.clark@company.com', office_number: 'C103',
title: 'Director, Applications', password: 'leiladirector', password_confirmation: 'leiladirector', manager_id: 6, department_id: 2,
location_id: 1, manager: true, admin: true)
Employee.create(firstname: 'Scott', lastname: 'Patrick', phone: '(415) 495-9492', email: 'scott.patrick@company.com', office_number: 'C104',
title: 'Director, Datacenters', password: 'scottdirector', password_confirmation: 'scottdirector', manager_id: 6, department_id: 2,
location_id: 1, manager: true)
Employee.create(firstname: 'Don', lastname: 'Jensen', phone: '(415) 605-0493', email: 'don.jensen@company.com', office_number: 'C105',
title: 'Director, Security', password: 'dondirector', password_confirmation: 'dondirector', manager_id: 6, department_id: 2, location_id: 1,
manager: true)

# Finance leadership
Employee.create(firstname: 'Jill', lastname: 'Quan', phone: '(415) 935-9683', email: 'jill.quan@company.com', office_number: 'D100',
title: 'CFO', password: 'jillcfo', password_confirmation: 'jillcfo', manager_id: 1, department_id: 9, location_id: 1, manager: true)
Employee.create(firstname: 'Susan', lastname: 'Bean', phone: '(415) 493-0493', email: 'susan.bean@company.com', office_number: 'D101',
title: 'Director, Accounting', password: 'susandirector', password_confirmation: 'susandirector', manager_id: 12, department_id: 9,
location_id: 1, manager: true)
Employee.create(firstname: 'Deepak', lastname: 'John', phone: '(415) 392-9384', email: 'deepak.john@company.com', office_number: 'D102',
title: 'Controller', password: 'deepakcontroller', password_confirmation: 'deepakcontroller', manager_id: 12, department_id: 9,
location_id: 1, manager: true)

# Suppport leadership
Employee.create(firstname: 'Sally', lastname: 'Behrman', phone: '(206) 958-4920', email: 'sally.behrman@company.com', office_number: 'E100',
title: 'VP, Support', password: 'sallyvp', password_confirmation: 'sallyvp', manager_id: 1, department_id: 7, location_id: 5, manager: true)

# HR leadership
Employee.create(firstname: 'Henry', lastname: 'Swanson', phone: '(415) 233-5241', email: 'henry.swanson@company.com', office_number: 'B150',
title: 'VP, Human Resources', password: 'henryvp', password_confirmation: 'henryvp', manager_id: 1, department_id: 6, location_id: 1, manager: true)

# Product Management leadership
Employee.create(firstname: 'Steven', lastname: 'Chu', phone: '(408) 493-8574', email: 'steven.chu@company.com', office_number: 'A170',
title: 'VP, Product Management', password: 'stevenvp', password_confirmation: 'stevenvp', manager_id: 1, department_id: 4,
location_id: 3, manager: true)
Employee.create(firstname: 'Loretta', lastname: 'Dane', phone: '(415) 493-8204', email: 'loretta.dane@company.com', office_number: 'A120',
title: 'Director, Product Management', password: 'lorettadirector', password_confirmation: 'lorettadirector', manager_id: 17,
department_id: 4, location_id: 1, manager: true)
Employee.create(firstname: 'Daniel', lastname: 'Wu', phone: '(408) 394-8372', email: 'daniel.wu@company.com', office_number: 'A172',
title: 'Director, Product Management', password: 'danieldirector', password_confirmation: 'danieldirector', manager_id: 17,
department_id: 4, location_id: 3, manager: true)

# Design leadership
Employee.create(firstname: 'Quinn', lastname: 'Hong', phone: '(408) 320-3920', email: 'quinn.hong@company.com', office_number: 'D111',
title: 'VP, Design', password: 'quinnvp', password_confirmation: 'quinnvp', manager_id: 1, department_id: 3, location_id: 3, manager: true)
Employee.create(firstname: 'Miranda', lastname: 'Johnson', phone: '(408) 223-4010', email: 'miranda.johnson@company.com', office_number: 'D113',
title: 'Director, Visual Design', password: 'mirandadirector', password_confirmation: 'mirandadirector', manager_id: 20, department_id: 3,
location_id: 3, manager: true)

# Engineering leadership
Employee.create(firstname: 'Connor', lastname: 'Anderson', phone: '(415) 432-7794', email: 'connor.anderson@company.com', office_number: 'B160',
title: 'VP, Engineering', password: 'connorvp', password_confirmation: 'connorvp', manager_id: 1, department_id: 1, location_id: 1, manager: true )
Employee.create(firstname: 'Kang', lastname: 'Vu', phone: '(415) 336-0392', email: 'kang.vu@company.com', office_number: 'B170',
title: 'Senior Director, Engineering', password: 'kangdirector', password_confirmation: 'kangdirector', manager_id: 22, department_id: 1,
location_id: 1, manager: true)
Employee.create(firstname: 'Misty', lastname: 'Coleman', phone: '(415) 338-4032', email: 'misty.coleman@company.com', office_number: 'B180',
title: 'Director, Engineering', password: 'mistydirector', password_confirmation: 'mistydirector', manager_id: 22, department_id: 1, location_id: 1, manager: true)
Employee.create(firstname: 'Reid', lastname: 'Bonta', phone: '(408) 977-3029', email: 'reid.bonta@company.com', office_number: 'C142',
title: 'Director, Engineering', password: 'reiddirector', password_confirmation: 'reiddirector', manager_id: 22, department_id: 1, location_id: 3, manager: true)
Employee.create(firstname: 'Abhishek', lastname: 'Kona', phone: '(408) 422-4039', email: 'abhishek.kona@company.com', office_number: 'C154',
title: 'Senior Director, Engineering', password: 'abhishekdirector', password_confirmation: 'abhishekdirector', manager_id: 22, department_id: 1,
location_id: 3, manager: true)

# Engineering staff
Employee.create(firstname: 'Marie', lastname: 'Finch', phone: '(415) 403-3929', email: 'marie.finch@company.com', office_number: 'B162',
title: 'Software Engineer', password: 'mariese', password_confirmation: 'mariese', manager_id: 23, department_id: 1, location_id: 1)
Employee.create(firstname: 'David', lastname: 'Benedict', phone: '(415) 443-0094', email: 'david.benedict@company.com', office_number: 'B164',
title: 'Software Engineer', password: 'davidse', password_confirmation: 'davidse', manager_id: 23, department_id: 1, location_id: 1)
Employee.create(firstname: 'Michael', lastname: 'Hoyer', phone: '(415) 225-4422', email: 'michael.hoyer@company.com', office_number: 'B163',
title: 'Software Engineer', password: 'michaelse', password_confirmation: 'michaelse', manager_id: 23, department_id: 1, location_id: 1)
Employee.create(firstname: 'Kurtis', lastname: 'Lee', phone: '(415) 185-5504', email: 'kurtis.lee@company.com', office_number: 'B166',
title: 'Software Engineer', password: 'kurtisse', password_confirmation: 'kurtisse', manager_id: 23, department_id: 1, location_id: 1)
Employee.create(firstname: 'Dale', lastname: 'Martin', phone: '(415) 445-7764', email: 'dale.martin@company.com', office_number: 'B177',
title: 'Senior Software Engineer', password: 'dalese', password_confirmation: 'dalese', manager_id: 24, department_id: 1, location_id: 1)
Employee.create(firstname: 'Evelyn', lastname: 'Meyer', phone: '(415) 998-4049', email: 'evelyn.meyer@company.com', office_number: 'B178',
title: 'Software Engineer', password: 'evelynse', password_confirmation: 'evelynse', manager_id: 24, department_id: 1, location_id: 1)
Employee.create(firstname: 'Shonda', lastname: 'Tarrington', phone: '(415) 553-6603', email: 'shonda.tarrington@company.com', office_number: 'B182',
title: 'Associate Software Engineer', password: 'shondase', password_confirmation: 'shondase', manager_id: 24, department_id: 1, location_id: 1)
Employee.create(firstname: 'Gary', lastname: 'Seale', phone: '(415) 330-5532', email: 'gary.seale@company.com', office_number: 'B184',
title: 'Software Engineer', password: 'garyse', password_confirmation: 'garyse', manager_id: 24, department_id: 1, location_id: 1)
Employee.create(firstname: 'Louis', lastname: 'King', phone: '(415) 856-7943', email: 'louis.king@company.com', office_number: 'B188',
title: 'Principal Software Engineer', password: 'louisse', password_confirmation: 'louisse', manager_id: 24, department_id: 1, location_id: 1)
Employee.create(firstname: 'Peter', lastname: 'Hammond', phone: '(408) 445-7764', email: 'peter.hammond@company.com', office_number: 'C150',
title: 'Associate Software Engineer', password: 'peterse', password_confirmation: 'peterse', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Tiffany', lastname: 'Thompson', phone: '(408) 956-4983', email: 'tiffany.thompson@company.com', office_number: 'C151',
title: 'Senior Software Engineer', password: 'tiffanyse', password_confirmation: 'tiffanyse', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Kevin', lastname: 'Davis', phone: '(408) 663-8875', email: 'kevin.davis@company.com', office_number: 'C152',
title: 'Senior Software Engineer', password: 'kevinse', password_confirmation: 'kevinse', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Pankaj', lastname: 'Borra', phone: '(408) 386-5532', email: 'pankaj.borra@company.com', office_number: 'C153',
title: 'Software Engineer', password: 'pankajse', password_confirmation: 'pankajse', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Sirisha', lastname: 'Kumar', phone: '(408) 442-4039', email: 'sirisha.kumar@company.com', office_number: 'C154',
title: 'Software Engineer', password: 'sirishase', password_confirmation: 'sirishase', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Eric', lastname: 'Riley', phone: '(408) 332-5938', email: 'eric.riley@company.com', office_number: 'C155',
title: 'Principal Software Engineer', password: 'ericse', password_confirmation: 'ericse', manager_id: 25, department_id: 1, location_id: 3)
Employee.create(firstname: 'Ravi', lastname: 'Kanda', phone: '(408) 776-4492', email: 'ravi.kanda@company.com', office_number: 'C156',
title: 'Software Engineer', password: 'ravise', password_confirmation: 'ravise', manager_id: 26, department_id: 1, location_id: 3)
Employee.create(firstname: 'Brady', lastname: 'Gilmore', phone: '(408) 448-7069', email: 'brady.gilmore@company.com', office_number: 'C157',
title: 'Senior Software Engineer', password: 'bradyse', password_confirmation: 'bradyse', manager_id: 26, department_id: 1, location_id: 3)

# Design staff
Employee.create(firstname: 'Victor', lastname: 'Lamar', phone: '(408) 985-7928', email: 'victor.lamar@company.com', office_number: 'D115',
title: 'Senior Visual Designer', password: 'victorvd', password_confirmation: 'victorvd', manager_id: 21, department_id: 3, location_id: 3)
Employee.create(firstname: 'Jason', lastname: 'Avaretti', phone: '(415) 443-5923', email: 'jason.avaretti@company.com', office_number: 'D117',
title: 'Visual Designer', password: 'jasonvd', password_confirmation: 'jasonvd', manager_id: 21, department_id: 3, location_id: 1)
Employee.create(firstname: 'Thomas', lastname: 'Lahon', phone: '(408) 452-7612', email: 'thomas.lahon@company.com', office_number: 'D112',
title: 'Interaction Designer', password: 'thomasid', password_confirmation: 'thomasid', manager_id: 20, department_id: 3, location_id: 3)
Employee.create(firstname: 'Raymond', lastname: 'Wang', phone: '(408) 443-3921', email: 'raymond.wang@company.com', office_number: 'D120',
title: 'Interaction Designer', password: 'raymondid', password_confirmation: 'raymondid', manager_id: 20, department_id: 3, location_id: 3)
Employee.create(firstname: 'Katherine', lastname: 'LaHoya', phone: '(415) 443-0967', email: 'katherine.lahoya@company.com', office_number: 'D118',
title: 'Graphic Designer', password: 'katherinegd', password_confirmation: 'katherinegd', manager_id: 21, department_id: 3, location_id: 1)

# Product Management staff
Employee.create(firstname: 'Vikram', lastname: 'Raj', phone: '(408) 493-8273', email: 'vikram.raj@company.com', office_number: 'A119',
title: 'Principal Product Manager', password: 'vikrampm', password_confirmation: 'vikrampm', manager_id: 18, department_id: 4, location_id: 3)
Employee.create(firstname: 'Ken', lastname: 'Leong', phone: '(408) 948-3726', email: 'ken.leong@company.com', office_number: 'A120',
title: 'Product Manager', password: 'kenpdm', password_confirmation: 'kenpdm', manager_id: 18, department_id: 4, location_id: 3)
Employee.create(firstname: 'Tony', lastname: 'Nguyen', phone: '(415) 443-9287', email: 'tony.nguyen@company.com', office_number: 'A171',
title: 'Product Manager', password: 'tonypm', password_confirmation: 'tonypm', manager_id: 18, department_id: 4, location_id: 1)
Employee.create(firstname: 'Tommy', lastname: 'James', phone: '(408) 993-8276', email: 'tommy.james@company.com', office_number: 'A113',
title: 'Senior Product Manager', password: 'tommypm', password_confirmation: 'tommypm', manager_id: 19, department_id: 4, location_id: 3)
Employee.create(firstname: 'Lisa', lastname: 'Knudson', phone: '(415) 227-3651', email: 'lisa.knudson@company.com', office_number: 'A129',
title: 'Product Manager', password: 'lisapm', password_confirmation: 'lisapm', manager_id: 19, department_id: 4, location_id: 1)
Employee.create(firstname: 'Luke', lastname: 'McAllister', phone: '(408) 998-2494', email: 'luke.mcallister@company.com', office_number: 'A137',
title: 'Senior Product Manager', password: 'lukepm', password_confirmation: 'lukepm', manager_id: 19, department_id: 4, location_id: 3)

# HR Staff
Employee.create(firstname: 'Phoebe', lastname: 'Yu', phone: '(415) 776-2918', email: 'phoebe.yu@company.com', office_number: 'B152',
title: 'HR Rep', password: 'phoebehr', password_confirmation: 'phoebehr', manager_id: 16, department_id: 6, location_id: 1, admin: true)
Employee.create(firstname: 'Suzanne', lastname: 'Moretti', phone: '(415) 201-9387', email: 'suzanne.moretti@company.com', office_number: 'B154',
title: 'HR Rep', password: 'suzannehr', password_confirmation: 'suzannehr', manager_id: 16, department_id: 6, location_id: 1, admin: true)
Employee.create(firstname: 'Ethan', lastname: 'Thompson', phone: '(415) 908-7625', email: 'ethan.thompson@company.com', office_number: 'B156',
title: 'Senior HR Rep', password: 'ethanhr', password_confirmation: 'ethanhr', manager_id: 16, department_id: 6, location_id: 1, admin: true)

# Support staff
Employee.create(firstname: 'Shane', lastname: 'Whiteman', phone: '(206) 483-9483', email: 'shane.whiteman@company.com', office_number: 'E110',
title: 'Support Rep', password: 'shanesr', password_confirmation: 'shanesr', manager_id: 15, department_id: 7, location_id: 5)
Employee.create(firstname: 'Donald', lastname: 'Wainright', phone: '(206) 449-3827', email: 'donald.wainright@company.com', office_number: 'E111',
title: 'Senior Support Rep', password: 'donaldsr', password_confirmation: 'donaldsr', manager_id: 15, department_id: 7, location_id: 5)
Employee.create(firstname: 'Walter', lastname: 'Jones', phone: '(206) 584-9382', email: 'walter.jones@company.com', office_number: 'E112',
title: 'Senior Support Rep', password: 'waltersr', password_confirmation: 'waltersr', manager_id: 15, department_id: 7, location_id: 5)
Employee.create(firstname: 'Delilah', lastname: 'Sampson', phone: '(206) 584-9301', email: 'delilah.sampson@company.com', office_number: 'E113',
title: 'Associate Support Rep', password: 'delilahsr', password_confirmation: 'delilahsr', manager_id: 15, department_id: 7, location_id: 5)
Employee.create(firstname: 'Jason', lastname: 'Alvarez', phone: '(206) 854-9382', email: 'jason.alvarez@company.com', office_number: 'E114',
title: 'Support Rep', password: 'jasonsr', password_confirmation: 'jasonsr', manager_id: 15, department_id: 7, location_id: 5)

# Finance staff
Employee.create(firstname: 'Kang', lastname: 'Woo', phone: '(415) 403-9574', email: 'kang.woo@company.com', office_number: 'D104',
title: 'Staff Accountant', password: 'kangsa', password_confirmation: 'kangsa', manager_id: 13, department_id: 9, location_id: 1)
Employee.create(firstname: 'James', lastname: 'Lucas', phone: '(415) 483-7483', email: 'james.lucas@company.com', office_number: 'D105',
title: 'Senior Accountant', password: 'jamessa', password_confirmation: 'jamessa', manager_id: 13, department_id: 9, location_id: 1)
Employee.create(firstname: 'Trevor', lastname: 'Kannan', phone: '(415) 493-8373', email: 'trevor.kannan@company.com', office_number: 'D106',
title: 'Financial Analyst', password: 'trevorfa', password_confirmation: 'trevorfa', manager_id: 14, department_id: 9, location_id: 1)
Employee.create(firstname: 'Daphne', lastname: 'Simpson', phone: '(415) 978-3726', email: 'daphne.simpson@company.com', office_number: 'D107',
title: 'Financial Analyst', password: 'daphnefa', password_confirmation: 'daphnefa', manager_id: 14, department_id: 9, location_id: 1)

# IT staff
Employee.create(firstname: 'Pedro', lastname: 'Gallegos', phone: '(212) 594-9392', email: 'pedro.gallegos@company.com', office_number: 'C155',
title: 'Network Administrator', password: 'pedrona', password_confirmation: 'pedrona', manager_id: 7, department_id: 2, location_id: 2)
Employee.create(firstname: 'Monte', lastname: 'Casilla', phone: '(415) 403-0949', email: 'monte.casilla@company.com', office_number: 'B110',
title: 'Network Administrator', password: 'montena', password_confirmation: 'montena', manager_id: 7, department_id: 2, location_id: 1,
admin: true)
Employee.create(firstname: 'Mohammed', lastname: 'Nassar', phone: '(212) 039-4938', email: 'mohammed.nassar@company.com', office_number: 'D109',
title: 'Database Administrator', password: 'mohammeddba', password_confirmation: 'mohammeddba', manager_id: 8, department_id: 2, location_id: 2)
Employee.create(firstname: 'Juanita', lastname: 'Sanchez', phone: '(415) 493-9584', email: 'juanita.sanchez@company.com', office_number: 'B112',
title: 'Senior Database Administrator', password: 'juanitadba', password_confirmation: 'juanitadba', manager_id: 8, department_id: 2,
location_id: 1)
Employee.create(firstname: 'Gloria', lastname: 'Jones', phone: '(415) 493-9483', email: 'gloria.jones@company.com', office_number: 'B140',
title: 'Security Analyst', password: 'gloriasa', password_confirmation: 'gloriasa', manager_id: 11, department_id: 2, location_id: 1)
Employee.create(firstname: 'Dave', lastname: 'Hanson', phone: '(408) 392-8473', email: 'dave.hanson@company.com', office_number: 'A210',
title: 'Security Analyst', password: 'davesa', password_confirmation: 'davesa', manager_id: 11, department_id: 2, location_id: 3)
Employee.create(firstname: 'Robert', lastname: 'Smith', phone: '(212) 304-9384', email: 'robert.smith@company.com', office_number: 'B114',
title: 'Senior Security Analyst', password: 'robertsa', password_confirmation: 'robertsa', manager_id: 11, department_id: 2, location_id: 2)
Employee.create(firstname: 'Pankaj', lastname: 'Agarwal', phone: '(415) 493-9483', email: 'pankaj.agarwal@company.com', office_number: 'B116',
title: 'Application Engineer', password: 'pankajae', password_confirmation: 'pankajae', manager_id: 9, department_id: 2, location_id: 1,
admin: true)
Employee.create(firstname: 'Carlos', lastname: 'Gonzalez', phone: '(415) 403-9485', email: 'carlos.gonzalez@company.com', office_number: 'B140',
title: 'Principal Application Engineer', password: 'carlosae', password_confirmation: 'carlosae', manager_id: 9, department_id: 2, location_id: 1,
admin: true)
Employee.create(firstname: 'Will', lastname: 'Donaldson', phone: '(415) 403-9483', email: 'will.donaldson@company.com', office_number: 'B130',
title: 'Senior Network Administrator', password: 'willna', password_confirmation: 'willna', manager_id: 7, department_id: 2, location_id: 1)

# Sales Reps
Employee.create(firstname: 'Jane', lastname: 'Wong', phone: '(212) 345-6789', email: 'jane.wong@company.com', office_number: 'B201',
title: 'Sales Rep', password: 'janesr', password_confirmation: 'janesr', manager_id: 3, department_id: 5, location_id: 2)
Employee.create(firstname: 'Bill', lastname: 'Lee', phone: '(212) 323-4423', email: 'bill.lee@company.com', office_number: 'B202',
title: 'Senior Sales Rep', password: 'billsr', password_confirmation: 'billsr', manager_id: 3, department_id: 5, location_id: 2)
Employee.create(firstname: 'Joe', lastname: 'Patel', phone: '(212) 909-8765', email: 'joe.patel@company.com', office_number: 'B205',
title: 'Sales Rep', password: 'joesar', password_confirmation: 'joesar', manager_id: 3, department_id: 5, location_id: 2)
Employee.create(firstname: 'Jose', lastname: 'Suarez', phone: '(415) 432-5643', email: 'jose.suarez@company.com', office_number: 'C104',
title: 'Associate Sales Rep', password: 'josesr', password_confirmation: 'josesr', manager_id: 4, department_id: 5, location_id: 1)
Employee.create(firstname: 'David', lastname: 'Alvarez', phone: '(408) 392-8475', email: 'david.alvarez@company.com', office_number: 'B101',
title: 'Sales Rep', password: 'davidsr', password_confirmation: 'davidsr', manager_id: 4, department_id: 5, location_id: 3)
Employee.create(firstname: 'Lisa', lastname: 'Curtis', phone: '(206) 939-5839', email: 'lisa.curtis@company.com', office_number: 'A112',
title: 'Senior Sales Rep', password: 'lisasr', password_confirmation: 'lisasr', manager_id: 4, department_id: 5, location_id: 5)
Employee.create(firstname: 'Sally', lastname: 'Johannsen', phone: '(312) 506-9493', email: 'sally.johannsen@company.com', office_number: 'A122',
title: 'Sales Rep', password: 'sallysr', password_confirmation: 'sallysr', manager_id: 5, department_id: 5, location_id: 4)
Employee.create(firstname: 'Jessica', lastname: 'Stewart', phone: '(312) 504-9205', email: 'jessica.stewart@company.com', office_number: 'A123',
title: 'Associate Sales Rep', password: 'jessicasr', password_confirmation: 'jessicasr', manager_id: 5, department_id: 5, location_id: 4)
Employee.create(firstname: 'Vikram', lastname: 'Gupta', phone: '(312) 594-3959', email: 'arjun.gupta@company.com', office_number: 'A121',
title: 'Sales Rep', password: 'vikramsr', password_confirmation: 'vikramsr', manager_id: 5, department_id: 5, location_id: 4)

# Account Managers
Employee.create(firstname: 'Tanya', lastname: 'Kramer', phone: '(212) 154-3069', email: 'tanya.kramer@company.com', office_number: 'B212',
title: 'Senior Account Manager', password: 'tanyaaccount', password_confirmation: 'tanyaaccount', manager_id: 3, department_id: 5, location_id: 2)
Employee.create(firstname: 'Eric', lastname: 'Paul', phone: '(212) 740-5932', email: 'eric.paul@company.com', office_number: 'B215',
title: 'Account Manager', password: 'ericaccount', password_confirmation: 'ericaccount', manager_id: 3, department_id: 5, location_id: 2)
Employee.create(firstname: 'Ed', lastname: 'Valdes', phone: '(415) 493-4059', email: 'ed.valdes@company.com', office_number: 'C117',
title: 'Associate Account Manager', password: 'edaccount', password_confirmation: 'edaccount', manager_id: 4, department_id: 5, location_id: 1)
Employee.create(firstname: 'Jay', lastname: 'Jones', phone: '(206) 492-9369', email: 'jay.jones@company.com', office_number: 'A100',
title: 'Senior Account Manager', password: 'jayaccount', password_confirmation: 'jayaccount', manager_id: 4, department_id: 5, location_id: 5)
Employee.create(firstname: 'Lynn', lastname: 'Swanson', phone: '(312) 403-3029', email: 'lynn.swanson@company.com', office_number: 'D206',
title: 'Account Manager', password: 'lynnaccount', password_confirmation: 'lynnaccount', manager_id: 5, department_id: 5, location_id: 4)
Employee.create(firstname: 'Heather', lastname: 'Mazzola', phone: '(312) 493-9594', email: 'heather.mazzola@company.com', office_number: 'D208',
title: 'Principal Account Manager', password: 'heatheraccount', password_confirmation: 'heatheraccount', manager_id: 5, department_id: 5, location_id: 4)
