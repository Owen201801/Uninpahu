Insert into persona (id_persona,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,direccion,codigo_gym)
					values (1000135984,'John','Stiven','Diaz','Cardenas','Cra 6a#65-16',001),
                    (1006338795,'Juanpis','','Gonzales','Pombo','Calle 200 #122-100',003),
                    (1998227684,'Pedro','Enrrique','Perez','','Cra 9 #68-26',001),
                    (1440136795,'Vannesa','Maria','Mendez','Angel','Cra 6a#65-16',003),
                    (1000364872,'Lady','Daniela','Yate','Castillo','Cra 19#12-6',003);

insert into usuario
(Altura,Peso,Edad,id_profile)
values (2,78,20,"P02"),(1.68,65,18,"P02"),(1.73,69,26,"P02");

insert into entrenador
(Tipo,id_profile)
values (1,"Fijo","P01");

update persona
set id_profile = "P02"
where id_profile IS NULL;


insert into Celular_Persona (Id_PersonaC,Celular) values	(1000135984,30170598),
															(1000135984,6698453),
															(1006338795,305886),
															(1006338795,316975);
                                                            
insert into Dia (Cod,id_personD,Nombre,Numero_De_Horas)values	(01,1000135984,"Lunes", 4),
																(02,1006338795,"Martes", 3),
																(01,1998227684,"Lunes", 4),
																(06,1440136795, "Sabado",2),
																(03,1000364872,"Miercoles",1);