INSERT INTO  empleados(
						Cedula_Empleado,
						Nombre,
						Telefono,
						Fecha_Comienzo 
					)

VALUES
    (
        12345,
        'Gina Rojas',
        3314725,
        '2008-11-11'
    ),
    (
        54321,
        'fredy Pérez',
        3295099,
        '2006-01-21'
    ),
    (
        65432,
        'Karen Rodríguez',
        9556958,
        '2013-04-24'
    ),
	(
        67890,
        'Homero Villa',
        5372936,
        '2015-11-02'
    ),
	(
        98765,
        'Mario Ávila',
        6764029,
        '2001-01-26'
    );
	
INSERT INTO cliente(
						Cedula_Cliente ,
						Nombre,
						Ciudad,
						Direccion 
					)

VALUES
    (
        87409,
        "Roberto Diaz",
        3314725,
		"Bogota",
        "Av 23 # 34-53"
    ),
    (
        48446,
        "Maria Perez",
        3295099,
		"Bogota",
        "cll 22 # 14-23"
    ),
    (
        90906,
        "Vanennesa Jimenez",
        9556958,
		"Medellin",
        "cll 2 #56-20"
    ),
	(
        10981,
        "Leidy Gonzales",
        5372936,
		"Cartagena",
        "Calle 40 # 20-15"
    ),
	(
        95606,
        "Camilo Sanchez",
        6764029,
		"Cali",
        "cll 23 # 78-43"
    );
	
INSERT INTO banqueros_consejeros(
						Cedula_ClienteBn,
						Cedula_Emp,
						Tipo,
					)

VALUES
    (
        87409,
        98765,
        "bolsa"
    ),
    (
        48446,
        54321,
        "préstamos"
    ),
    (
        90906,
        98765,
        "bolsa"
    ),
	(
        10981,
        54321,
        "préstamos"
    ),
	(
        95606,
        98765,
        "ahorros"
    );
	
INSERT INTO sucursal(
						Cod_Sucursal,
						Nombre,
						Activos,
						Ciudad,
						CedulaESu
					)

VALUES
    (
        8322,
        "norte",
        500´483.950.65,
		"Bogota"
    ),
    (
        9404,
        "centro",
        800´684.567.499,
		"Bogota"
    ),
    (
        4375,
        "oriente",
        34´700.000.34,
		"Medellin"
    ),
	(
        9815,
        "occidente,",
        104´586.937.58,
		"Cartagena"
    ),
	(
        2155,
        "sur",
        305´456.354.67,
		"Cali"
    );
	
INSERT INTO cuenta(
						No_Cuenta ,
						Saldo,
						Codigo_SucursalC 
					)

VALUES
    (
        0319,
        483.950.65,
		8322
    ),
    (
        0095,
        800´684.567.,
		9404
    ),
    (
        0659,
        700.000.734,
		4375
    ),
	(
        0387,
        186.937.58,
		8322
    ),
	 (
        6590,
        483.950,
		9404
    ),
    (
        9547,
        84.567.499,
		9815
    ),
    (
        1534,
        4´700.000.34,
		4375
    ),
	(
        9523,
        2´586.937.58,
		9815
    ),
	(
        0401,
        7´456.354.67,
		2155
	),
	(
		0601,
        9´486.754.967,
		2155
    );
		
INSERT INTO cuenta_ahorro(
						No_CuentaH,
						intereses,
					)

VALUES
    (
        0319,
        3.6
    ),
    (
        0095,
        2.6
    ),
    (
        0659,
        4.6
    ),
	(
        0387,
        3.69
    ),
	(
        6590,
        4.68
    );

INSERT INTO cuenta_corriente(
						No_CuentaC,
						Cupo_Sobregiro 
					)

VALUES
    (
        9547,
        17.5´000.000,
    ),
    (
        1534,
        18.3´000.000,
    ),
	(
        9523,
        15.1´500.000,
    ),
	(
        0401,
        14.406.354.988,

	),
	(
		0601,
        13.982.100.000,
    );
	
INSERT impositores(
						Cedula_ClienteIm,
						No_CuentaIm
					)

VALUES
    (
        87409,
        0319,
    ),
    (
        48446,
        0601,
    ),
	(
        90906,
        9523,
    ),
	(
        10981,
        0095,

	),
	(
		95606,
        0659,
    );

SELECT * FROM empleados;