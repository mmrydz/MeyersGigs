
-------------------------------------------------
-------------------------------------------------
-- Section Seeds the users_info table

INSERT INTO users_infos (username, personality,"password", quest1, quest2 , quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, quest11, quest12, quest13, quest14, quest15, quest16, quest17, quest18, quest19, quest20)  
VALUES ('MrsDoubtfire','ESFJ','kiddos',1,3,4,5,1,3,4,5,3,4,5,3,1,2,2,2,1,2,3,4);

INSERT INTO users_infos (username, personality,"password", quest1, quest2 , quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, quest11, quest12, quest13, quest14, quest15, quest16, quest17, quest18, quest19, quest20)  
VALUES ('JeffSkilling','ENTJ','blackgold',1,1,2,5,1,1,4,5,4,4,5,3,5,5,5,2,1,1,3,4);

INSERT INTO users_infos (username, personality,"password", quest1, quest2 , quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, quest11, quest12, quest13, quest14, quest15, quest16, quest17, quest18, quest19, quest20)  
VALUES ('PTBarnum','ENFP','clowns',1,3,1,1,1,3,2,3,3,1,3,1,1,2,2,2,1,2,1,1);

SELECT * FROM users_infos;

-------------------------------------------------
-------------------------------------------------
-- Section Seeds the types_info table

TRUNCATE TABLE types_info;

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ISTJ',
'Quiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily, regardless of distractions. Take pleasure in making everything orderly and organized - their work, their home, their life. Value traditions and loyalty.',
'/img/ISTJ.jpg',
'Accountant',
'Financial Analyst',
'Engineer');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ISFJ',
'Quiet, friendly, responsible, and conscientious. Committed and steady in meeting their obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to them, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.',
'/img/ISFJ.jpg',
'Social Worker',
'Pharmacist',
'Teacher');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'INFJ',
'Seek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.',
'/img/INFJ.jpg',
'Physical Therapist',
'Public Health Educator',
'Clinical Psychologist');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'INTJ',
'Have original minds and great drive for implementing their ideas and achieving their goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.',
'/img/INTJ.jpg',
'Accountant',
'Insurance/Underwriter',
'Engineer');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ISTP',
'Tolerant and flexible, quiet observers until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency.',
'/img/ISTP.jpg',
'Carpenter',
'Surveyor',
'Mechanic');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ISFP',
"Quiet, friendly, sensitive, and kind. Enjoy the present moment, what's going on around them. Like to have their own space and to work within their own time frame. Loyal and committed to their values and to people who are important to them. Dislike disagreements and conflicts, do not force their opinions or values on others.",
'/img/ISFP.jpg',
'Fashion Designer',
'Interior Designer',
'Cosmetologist');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'INFP',
'Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.',
'/img/INFP.jpg',
'Fine Artist',
'Mental Health Counselor',
'Curator');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'INTP',
'Seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.',
'/img/INTP.jpg',
'Software Developer',
'Web Developer',
'Architect');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ESTP',
'Flexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.',
'/img/ESTP.jpg',
'General Contractor',
'Building Surveyor',
'Construction Worker');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ESFP',
'Outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.',
'/img/ESFP.jpg',
'Elementary Teacher',
'Recreation Worker',
'Social Worker');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ENFP',
'Warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency.',
'/img/ENFP.jpg',
'Actor',
'Advertising Sales Agent',
'Real Estate Agent');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ENTP',
'Quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.',
'/img/ENTP.jpg',
'Financial Planner',
'Architect',
'Environmental Scientist');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ESTJ',
'Practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.',
'/img/ESTJ.jpg',
'Sales Engineer',
'Stock Broker',
'Insurance Agent');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ESFJ',
'Warmhearted, conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who they are and for what they contribute.',
'/img/ESFJ.jpg',
'Elementary Teacher',
'Special Education Teacher',
'Child Care Provider');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ENFJ',
'Warm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.',
'/img/ENFJ.jpg',
'Health Educator',
'Editor',
'Advertising Promotions Manager');

INSERT INTO types_info (personality, description, img_url, job_title_1, job_title_2, job_title_3)
VALUES (
'ENTJ',
'Frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.',
'/img/ENTJ.jpg',
'Management Consultant',
'Advertising Promotions Manager',
'Compensation or Benefits Manager');
