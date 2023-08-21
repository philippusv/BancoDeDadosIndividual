create database delegacia;

create table delegacia(
delegacia_id serial,
del_nome varchar(50),
del_endereço varchar(200),
del_telefone integer,
primary key(delegacia_id)
);

create table denuncia(
denuncia_id serial,
den_dt_data date,
den_descri varchar(200),
den_local varchar(200),
fk_delegacia_id integer,
primary key(denuncia_id),
foreign key(fk_delegacia_id) references delegacia(delegacia_id)
);

create table denunciante(
denunciante_id serial,
d_nome varchar(50),
d_cpf varchar(14),
d_endereço varchar(200),
d_telefone integer,
d_data_nasc date,
primary key(denunciante_id)
);

insert into delegacia(delegacia_id,del_nome,del_endereço,del_telefone) values
(1,'Delegacia Itamarati','Rua Itamarati','22317568'),
(2,'Delegacia Centro','Rua do Imperador','22544678'),
(3,'Delegacia Itaipava','Rua Itaipava','22452467'),
(4,'Delegacia Cascatinha','Rua Cascatinha','22453456'),
(5,'Delegacia Posse','Rua Posse','22457890');

insert into denuncia(denuncia_id,den_dt_data,den_descri,den_local,fk_delegacia_id) values 
(1,'20/08/2018','Assalto','Ponto de onibus',1),
(2,'13/10/2020','Homicidio','Supermercado',2),
(3,'21/03/2023','Furto','UCP',3),
(4,'21/03/2023','Homicidioo','Praça Cenip',4),
(5,'21/03/2023','Homicidio','Obelisco',5);

insert into denunciante(denunciante_id,d_nome,d_cpf,d_endereço,d_telefone,d_data_nasc) values
(1,'Felipe','123.134.123-12','Rua Santos da Silva','988311356','13/09/2001'),
(2,'Renato','123.123.123-12','Rua Machado dos Santos','988316699','24/01/1965'),
(3,'Claudia','155.134.999-42','Rua do Imperador','988317788','17/10/1969'),
(4,'Tamires','135.568.756-87','Rua Santos Dummount','992345678','01/04/2002'),
(5,'Fernando','145.057.247-34','Rua do Imperador','992345622','23/08/1998');

SELECT denuncia.den_dt_data, denunciante.d_nome
FROM denuncia
JOIN denunciante ON denuncia.fk_delegacia_id = denunciante.denunciante_id
WHERE denuncia.den_descri = 'Homicidio'
ORDER BY denuncia.den_dt_data DESC;

select
	denunciante.d_nome,
	denunciante.d_endereço
from
	denuncia
join denunciante on
	denuncia.fk_delegacia_id = denunciante.denunciante_id
join delegacia on
	denuncia.fk_delegacia_id = delegacia.delegacia_id
where
	delegacia.del_nome = 'Delegacia Centro'
	and denunciante.d_cpf like '123%'
order by
	denunciante.d_nome;






