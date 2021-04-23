insert into mydbtest.users (name, lastName, password, username)
values ('Oleg', 'Petrov' , '$2y$12$SoZURprMGqMqbquqEAGsD.vEYXbCBMA6qOVfUB6Q/TH.YvxMld36e', '111@mail.ru');
insert into mydbtest.users (name, lastName, password, username)
values ('Elena', 'Sidorova' , '$2y$12$SoZURprMGqMqbquqEAGsD.vEYXbCBMA6qOVfUB6Q/TH.YvxMld36e', 'admin@mail.ru');
insert into mydbtest.roles (name) value ('ROLE_USER');
insert into mydbtest.roles (name) value ('ROLE_ADMIN');
insert into mydbtest.users_roles (user_id, role_id) values (1,2);
insert into mydbtest.users_roles (user_id, role_id) values (2,1);

