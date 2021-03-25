Insert Into Professor Values (
    123456789,
    'M',
    'Mr.',
    111765,
    'Andrew Born',
    714,
    8713423,
    '1500 Brea Blvd.',
    'Brea',
    'CA',
    '92355'
);

Insert Into Professor Values (
    765486987,
    'F',
    'Mrs.',
    122361,
    'Samantha Singh',
    714,
    2387633,
    '1100 Fourth St.',
    'Fullerton',
    'CA',
    '92470'
);

Insert Into Professor Values (
    109374923,
    'F',
    'Ms.',
    103092,
    'Kyle Kapernick',
    714,
    6723982,
    '1201 East St.',
    'Irvine',
    'CA',
    '91101'
);

Insert Into College_Degree Values(
    109374923,
    'Mathematics'
);

Insert Into College_Degree Values(
    765486987,
    'Biology'
);

Insert Into College_Degree Values(
    123456789,
    'Political Science'
);

Insert Into College_Degree Values(
    109374923,
    'Computer Science'
);

Insert Into Department Values(
    07,
    'Law',
    'Langsdorf Hall',
    7145622135,
    123456789
);

Insert Into Department Values(
    11,
    'Information Science',
    'Engineering',
    7149998274,
    109374923
);

Insert Into Department Values(
    14,
    'General Education',
    'Mcharthy Hall',
    7146128734,
    765486987
);

Insert Into Student Values(
    682634629,
    '125 South St. Fullerton CA, 92344',
    7145622789,
    'John',
    'Smith',
    11
);

Insert Into Student Values(
    862354826,
    '766 Alcapone Ave. Brea CA, 92866',
    7145326482,
    'Bobby',
    'Dylan',
    07
);

Insert Into Student Values(
    769239856,
    '811 East St. Placentia CA. 92870',
    7145622789,
    'Lana',
    'Johnson',
    07
);

Insert Into Student Values(
    345223958,
    '111 Richmond Way Fullerton CA. 92344',
    7142473845,
    'Stacy',
    'Rodgers',
    07
);

Insert Into Student Values(
    565489214,
    '923 Flower St. Greendale CA. 90135',
    7149750237,
    'Betty',
    'Wilson',
    11
);

Insert Into Student Values(
    123985476,
    '115 Gilbert St. Artesia CA. 92870',
    7147320564,
    'Tank',
    'Dempsey',
    11
);

Insert Into Student Values(
    935167412,
    '935 8th St. Buena Park CA. 90620',
    7145218732,
    'Kianu',
    'Peeves',
    11
);

Insert Into Student Values(
    963147852,
    '2121 Vine Ave. Fullerton CA. 92835',
    7143862058,
    'Luis',
    'Martinez',
    11
);

Insert Into Minor Values(
    11,
    345223958
);

Insert Into Minor Values(
    11,
    862354826
);

Insert Into Minor Values(
    07,
    565489214
);

Insert Into Course Values(
    'POSC-101',
    'Intro to Law',
    'Political Theory',
    3,
    07
);

Insert Into Course Values(
    'POSC-311',
    'Gender and Politics',
    'Political Feminism',
    3,
    07
);

Insert Into Course Values(
    'CPSC-131',
    'Data Structures',
    'Structuring Data',
    3,
    11
);

Insert Into Course Values(
    'CPSC-335',
    'Algorithms',
    'Algo Expert',
    3,
    11
);

Insert Into Course Values(
    'GEN-101',
    'Personal Finance',
    'History of Tax',
    3,
    14
);

Insert Into Course Values(
    'GEN-254',
    'Beginner Cooking',
    'Culinary Arts',
    3,
    14
);

Insert Into Course Values(
    'GEN-181',
    'Dance Theory',
    'Cultural Dance',
    3,
    14
);

Insert Into Prerequisite Values(
    'POSC-311',
    'POSC-101'
);

Insert Into Prerequisite Values(
    'CPSC-335',
    'CPSC-131'
);

Insert Into Section Values(
    01,
    'POSC-101',
    123456789,
    '8:00 am',
    '9:50 am',
    'Mo We',
    30,
    'POSC-205'
);

Insert Into Section Values(
    02,
    'POSC-101',
    123456789,
    '10:00 am',
    '11:50 am',
    'Mo We',
    30,
    'POSC-213'
);

Insert Into Section Values(
    03,
    'POSC-311',
    123456789,
    '1:00 pm',
    '2:50 pm',
    'Tu Th',
    30,
    'POSC-410'
);

Insert Into Section Values(
    04,
    'CPSC-131',
    109374923,
    '9:00 am',
    '10:15 am',
    'Mo We',
    45,
    'CS-109'
);

Insert Into Section Values(
    05,
    'CPSC-131',
    109374923,
    '10:30 am',
    '11:45 am',
    'Tu Th',
    45,
    'CS-109'
);

Insert Into Section Values(
    06,
    'CPSC-335',
    109374923,
    '1:00 pm',
    '2:45 pm',
    'Mo We',
    30,
    'CS-201'
);

Insert Into Section Values(
    07,
    'GEN-101',
    765486987,
    '8:00 pm',
    '9:50 pm',
    'Mo We',
    20,
    'MH-198'
);

Insert Into Section Values(
    08,
    'GEN-254',
    765486987,
    '1:00 pm',
    '5:45 pm',
    'F',
    20,
    'MH-214'
);

Insert Into Section Values(
    09,
    'GEN-181',
    765486987,
    '1:00 pm',
    '2:45 pm',
    'Sa',
    25,
    'MH-300'
);

Insert Into Enrollment Values(
    02,
    862354826,
    'A+'
);

Insert Into Enrollment Values(
    01,
    769239856,
    'C+'
);

Insert Into Enrollment Values(
    03,
    345223958,
    'A-'
);

Insert Into Enrollment Values(
    04,
    682634629,
    'B-'
);

Insert Into Enrollment Values(
    07,
    862354826,
    'C-'
);

Insert Into Enrollment Values(
    08,
    769239856,
    'C+'
);

Insert Into Enrollment Values(
    09,
    345223958,
    'A-'
);

Insert Into Enrollment Values(
    07,
    682634629,
    'B-'
);

Insert Into Enrollment Values(
    07,
    345223958,
    'B+'
);

Insert Into Enrollment Values(
    08,
    682634629,
    'A'
);

Insert Into Enrollment Values(
    04,
    565489214,
    'A-'
);

Insert Into Enrollment Values(
    07,
    565489214,
    'A+'
);

Insert Into Enrollment Values(
    09,
    565489214,
    'A'
);

Insert Into Enrollment Values(
    05,
    123985476,
    'B+'
);

Insert Into Enrollment Values(
    08,
    123985476,
    'C'
);

Insert Into Enrollment Values(
    06,
    935167412,
    'C+'
);

Insert Into Enrollment Values(
    09,
    935167412,
    'B-'
);

Insert Into Enrollment Values(
    06,
    963147852,
    'A+'
);

Insert Into Enrollment Values(
    07,
    963147852,
    'D'
);

Insert Into Enrollment Values(
    09,
    963147852,
    'A'
);   