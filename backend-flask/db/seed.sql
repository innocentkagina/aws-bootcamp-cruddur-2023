-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Innocent Kagina','kaginno@gmail.com','kaginno','MOCK'),
  ('Deus Bugembe','deus.b@gmail.com','deus.b' ,'MOCK'),
  ('Londo Mollari', 'lmollari@centari.com','londo','MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'kaginno' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  );