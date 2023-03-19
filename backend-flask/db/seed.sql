-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Inno DODO', 'kaginno' ,'MOCK', 'MOCK'),
  ('Deus DODO', 'deuk.b' ,'MOCK', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'kaginno' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )