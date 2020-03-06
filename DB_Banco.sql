---create database Banco;

---Use database Banco;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='empleados' and xtype='U')
	Create table   empleados(
									Cedula_Empleado int PRIMARY KEY,
									Nombre varchar (20),
									Telefono int,
									Fecha_Comienzo date
									);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='trabajan_para' and xtype='U')											
	Create table  trabajan_para (
									Cedula_Sub int PRIMARY KEY,
									Cedula_Jefe int,
									FOREIGN KEY (Cedula_Jefe) REFERENCES empleados(Cedula_Empleado),
									);
GO	

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='banqueros_consejeros' and xtype='U')
	Create table  banqueros_consejeros (
											Cedula_ClienteBn int PRIMARY KEY,
											Cedula_Emp int,
											Tipo Varchar (15),
											FOREIGN KEY (Cedula_ClienteBn) REFERENCES cliente(Cedula_Cliente),
											FOREIGN KEY (Cedula_Emp) REFERENCES empleados(Cedula_Empleado),
											);	
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='impositores' and xtype='U')
	Create table  impositores (			
										Id_impositores int PRIMARY KEY,
										Cedula_ClienteIm int,
										No_CuentaIm int ,
										FOREIGN KEY (Cedula_ClienteIm) REFERENCES cliente(Cedula_Cliente),
										FOREIGN KEY (No_CuentaIm) REFERENCES cuenta(No_Cuenta)
										);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='cliente' and xtype='U')
	Create table cliente(
							Cedula_Cliente int PRIMARY KEY,
							Nombre varchar (30),
							Ciudad varchar(20),
							Direccion varchar (25)
							);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='sucursal' and xtype='U')							
	Create table sucursal(
							Cod_Sucursal int PRIMARY KEY,
							Nombre varchar (35),
							Activos int,
							Ciudad varchar(20),
							CedulaESu int,
							FOREIGN KEY (CedulaESu) REFERENCES empleados(Cedula_Empleado)
							);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='cuenta' and xtype='U')							
	Create table  cuenta (
								No_Cuenta int PRIMARY KEY,
								Saldo float,
								Codigo_SucursalC int
								FOREIGN KEY (Codigo_SucursalC) REFERENCES sucursal(Cod_Sucursal)
								);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='cuenta_ahorro' and xtype='U')
	Create table  cuenta_ahorro (
									No_CuentaH int PRIMARY KEY,
									intereses float,
									FOREIGN KEY (No_CuentaH) REFERENCES cuenta(No_Cuenta)
									);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='cuenta_corriente' and xtype='U')		
	Create table  cuenta_corriente (
										No_CuentaC int PRIMARY KEY,
										Cupo_Sobregiro float,
										FOREIGN KEY (No_CuentaC) REFERENCES cuenta(No_Cuenta)
										);
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='prestatario' and xtype='U')
	Create table  prestatario (
									No_prestamo int PRIMARY KEY,
									PrestamoP int,
									Cedula_ClienteP int,
									FOREIGN KEY (Cedula_ClienteP) REFERENCES cliente(Cedula_Cliente)
									);
GO	
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='prestamo' and xtype='U')																					
	Create table  prestamo (
								Id_prestamo int PRIMARY KEY,
								Cuantia float,
								Codigo_SucursalP int,
								No_prestamoPrt int,
								FOREIGN KEY (Codigo_SucursalP) REFERENCES sucursal(Cod_Sucursal),
								FOREIGN KEY (No_prestamoPrt) REFERENCES prestatario(No_Prestamo)
								);
GO
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='pago' and xtype='U')																																		
	Create table pago (	
							Id_pago int PRIMARY KEY,
							Monto float,
							Fecha_Pago date,
							Id_PrestamoP int,
							No_PrestamoPrtt int,
							FOREIGN KEY (Id_PrestamoP) REFERENCES prestamo(Id_Prestamo),
							FOREIGN KEY (No_PrestamoPrtt) REFERENCES prestatario(No_Prestamo)
						);
GO													

ALTER TABLE [dbo].[prestatario]  WITH CHECK ADD FOREIGN KEY([PrestamoP])
REFERENCES [dbo].[prestamo] ([Id_Prestamo])
GO