
-------------------------------------------------
-------------------------------------------------
-- Section Seeds the users table
INSERT INTO `users` (`username`, `password`) VALUES ('John', 'password123');
INSERT INTO `users` (`username`, `personality`, `password`) VALUES ('JeffSkilling','ENTJ','blackgold');
INSERT INTO `users` (`username`, `personality`, `password`) VALUES ('MrsDoubtfire', 'ESFJ', 'kiddos');
INSERT INTO `users` (`username`, `personality`, `password`) VALUES ('PTBarnum','ENFP','clowns');
SELECT * FROM users;

-------------------------------------------------
-------------------------------------------------
-- Section Seeds the types_info table

TRUNCATE TABLE types_infos;

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ISTJ',
'Quiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily, regardless of distractions. Take pleasure in making everything orderly and organized - their work, their home, their life. Value traditions and loyalty.',
'/img/ISTJ.jpg',
'Accountant',
'Financial Analyst',
'Engineer',
'/img/ISTJ_Accountant_img.JPG',    
'/img/ISTJ_Financial_Analyst_img.JPG',
'/img/ISTJ_Engineer_img.JPG',
'https://www.indeed.com/jobs?q=Accountant&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Financial+Analyst&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Engineer&l=Washington%2C+DC'
);


INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ISFJ',
'Quiet, friendly, responsible, and conscientious. Committed and steady in meeting their obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to them, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.',
'/img/ISFJ.jpg',
'Social Worker',
'Pharmacist',
'Teacher',
'/img/ISFJ_Social_Worker_img.JPG',    
'/img/ISFJ_Pharmacist_img.JPG',
'/img/ISFJ_Teacher_img.JPG',
'https://www.indeed.com/jobs?q=social+worker&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=pharmacist&l=Washington%2C+DC',
'https://www.indeed.com/q-teacher-l-Washington,-DC-jobs.html'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'INFJ',
'Seek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.',
'/img/INFJ.jpg',
'Physical Therapist',
'Public Health Educator',
'Clinical Psychologist',
'/img/INFJ_Physical_Therapist_img.JPG',    
'/img/INFJ_Public_Health_Educator_img.JPG',
'/img/INFJ_Clinical_Psychologist_img.JPG',
'https://www.indeed.com/jobs?q=Physical+Therapist&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Public+Health+Educator&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=clinical%20psychologist&l=Washington%2C%20DC&advn=6134831459720103&vjk=140ef0afcc8458a4'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'INTJ',
'Have original minds and great drive for implementing their ideas and achieving their goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.',
'/img/INTJ.jpg',
'Accountant',
'Insurance Underwriter',
'Engineer',
'/img/INTJ_Accountant_img.JPG',    
'/img/INTJ_Insurance_Underwriter_img.JPG',
'/img/INTJ_Engineer_img.JPG',
'https://www.indeed.com/jobs?q=Accountant&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Insurance+Underwriter&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Engineer&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ISTP',
'Tolerant and flexible, quiet observers until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency.',
'/img/ISTP.jpg',
'Carpenter',
'Surveyor',
'Mechanic',
'/img/ISTP_Carpenter_img.JPG',    
'/img/ISTP_Surveyor_img.JPG',
'/img/ISTP_Mechanic_img.JPG',
'https://www.indeed.com/jobs?q=Carpenter&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Surveyor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Mechanic&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ISFP',
"Quiet, friendly, sensitive, and kind. Enjoy the present moment, what's going on around them. Like to have their own space and to work within their own time frame. Loyal and committed to their values and to people who are important to them. Dislike disagreements and conflicts, do not force their opinions or values on others.",
'/img/ISFP.jpg',
'Fashion Designer',
'Interior Designer',
'Cosmetologist',
'/img/ISFP_Fashion_Designer_img.JPG',    
'/img/ISFP_Interior_Designer_img.JPG',
'/img/ISFP_Cosmetologist_img.JPG',
'https://www.indeed.com/jobs?q=Fashion+Designer&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Interior+Designer&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Cosmetologist&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'INFP',
'Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.',
'/img/INFP.jpg',
'Fine Artist',
'Mental Health Counselor',
'Curator',
'/img/INFP_Fine_Artist_img.JPG',    
'/img/INFP_Mental_Health_Counselor_img.JPG',
'/img/INFP_Curator_img.JPG',
'https://www.indeed.com/jobs?q=Fine+Artist&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Mental+Health+Counselor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Curator&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'INTP',
'Seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.',
'/img/INTP.jpg',
'Software Developer',
'Web Developer',
'Architect',
'/img/INTP_Software_Developer_img.JPG',    
'/img/INTP_Web_Developer_img.JPG',
'/img/INTP_Architect_img.JPG',
'https://www.indeed.com/jobs?q=Software+Developer&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Web+Developer&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Architect&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ESTP',
'Flexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.',
'/img/ESTP.jpg',
'General Contractor',
'Building Surveyor',
'Construction Worker',
'/img/ESTP_General_Contractor_img.JPG',    
'/img/ESTP_Building_Surveyor_img.JPG',
'/img/ESTP_Construction_Worker_img.JPG',
'https://www.indeed.com/jobs?q=General+Contractor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Building+Surveyor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Construction+Worker&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ESFP',
'Outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.',
'/img/ESFP.jpg',
'Elementary Teacher',
'Recreation Worker',
'Social Worker',
'/img/ESFP_Elementary_Teacher_img.JPG',    
'/img/ESFP_Recreation_Worker_img.JPG',
'/img/ESFP_Social_Worker_img.JPG',
'https://www.indeed.com/jobs?q=Elementary+Teacher&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Recreation+Worker&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Social+Worker&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ENFP',
'Warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency.',
'/img/ENFP.jpg',
'Actor',
'Advertising Sales Agent',
'Real Estate Agent',
'/img/ENFP_Actor_img.JPG',    
'/img/ENFP_Advertising_Sales_Agent_img.JPG',
'/img/ENFP_Real_Estate_Agent_img.JPG',
'https://www.indeed.com/jobs?q=Actor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Advertising+Sales+Agent&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Real+Estate+Agent&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ENTP',
'Quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.',
'/img/ENTP.jpg',
'Financial Planner',
'Architect',
'Environmental Scientist',
'/img/ENTP_Financial_Planner_img.JPG',    
'/img/ENTP_Architect_img.JPG',
'/img/ENTP_Environmental_Scientist_img.JPG',
'https://www.indeed.com/jobs?q=Financial+Planner&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Architect&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Environmental+Scientist&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ESTJ',
'Practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.',
'/img/ESTJ.jpg',
'Sales Engineer',
'Stock Broker',
'Insurance Agent',
'/img/ESTJ_Sales_Engineer_img.JPG',    
'/img/ESTJ_Stock_Broker_img.JPG',
'/img/ESTJ_Insurance_Agent_img.JPG',
'https://www.indeed.com/jobs?q=Sales+Engineer&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Stock+Broker&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Insurance+Agent&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ESFJ',
'Warmhearted, conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who they are and for what they contribute.',
'/img/ESFJ.jpg',
'Elementary Teacher',
'Special Education Teacher',
'Child Care Provider',
'/img/ESFJ_Elementary_Teacher_img.JPG',    
'/img/ESFJ_Special_Education_Teacher_img.JPG',
'/img/ESFJ_Child_Care_Provider_img.JPG',
'https://www.indeed.com/jobs?q=Elementary+Teacher&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Special+Education+Teacher&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Child+Care+Provider&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ENFJ',
'Warm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.',
'/img/ENFJ.jpg',
'Health Educator',
'Editor',
'Advertising Promotions Manager',
'/img/ENFJ_Health_Educator_img.JPG',    
'/img/ENFJ_Editor_img.JPG',
'/img/ENFJ_Advertising_Promotions_Manager_img.JPG',
'https://www.indeed.com/jobs?q=Health+Educator&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Editor&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Advertising+Promotions+Manager&l=Washington%2C+DC'
);

INSERT INTO types_infos (personality, description, img_url, 
job_title_1, job_title_2, job_title_3, 
job_title_1_img, job_title_2_img, job_title_3_img,
job_title_1_url, job_title_2_url, job_title_3_url)
VALUES (
'ENTJ',
'Frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.',
'/img/ENTJ.jpg',
'Management Consultant',
'Advertising Promotions Manager',
'Compensation or Benefits Manager',
'/img/ENTJ_Management_Consultant_img.JPG',    
'/img/ENTJ_Advertising_Promotions_Manager_img.JPG',
'/img/ENTJ_Compensation_Benefits_Mgr_img.JPG',
'https://www.indeed.com/jobs?q=Management+Consultant&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Advertising+Promotions+Manager&l=Washington%2C+DC',
'https://www.indeed.com/jobs?q=Compensation+Benefits+Manager&l=Washington%2C+DC'
);
