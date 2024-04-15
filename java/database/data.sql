BEGIN TRANSACTION;
INSERT INTO users (username, password_hash, role)
VALUES (
    'user',
    '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC',
    'ROLE_USER'
  );
INSERT INTO users (username, password_hash, role)
VALUES (
    'admin',
    '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC',
    'ROLE_ADMIN'
  );
INSERT INTO users (username, password_hash, role)
VALUES (
    'employee',
    '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC',
    'ROLE_EMPLOYEE'
  );

INSERT INTO user_profiles (user_profile_id, user_id, first_name, last_name, email, profile_picture, goal)
VALUES (1, 1, 'Mihir', 'Patel', 'mihirpatel@gmail.com', '', 'Put on muscle mass');


INSERT INTO exercises (exercise_id, user_id, exercise_name, exercise_duration_minutes, sets, reps, weight_lbs)
VALUES (1, 1, 'Bench Press', 30, 4, 10, 135),
(2, 1, 'Squats', 30, 4, 10, 135),
(3, 1, 'Deadlift', 30, 4, 10, 135);

INSERT INTO schedules (title, instructor, description, duration_minutes) 
VALUES ('Power Lifting with Gill', 'Gill', 'Want to carry the groceries in one go? Learn the basics of bench, squat, and deadlift. It has been proven time and time again that power lifting has increased overall strength in an individual1', 60);

INSERT INTO schedules (title, instructor, description, duration_minutes)
VALUES ('Cardio With Max', 'Max', 'Skipping your cardio? Want to shred body fat? Learn the ropes with our beginner friendly anaerobic and aerobic exercises to help you with your fitness goals!', 60);

COMMIT TRANSACTION;