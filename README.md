# TROPICOSA
La Tropicosa S.A. de C.V. es una empresa de venta de discos de acetato que ahora busca innovar entrando en la distribución de música en formato de cassettes. Como principal requisito, La Tropicosa necesita sistema en el cual se pueda capturar, editar, eliminar y mostrar los cassettes que tiene disponibles.

# Instalacion

### Requerimientos
- [Ruby 2.3.3](https://rubyinstaller.org/downloads/)
- [Rails Installer 3.2.1](https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-3.2.1.exe)
- [Node.js](https://nodejs.org/en/download/)

### Proceso

Clonar el Repositorio
*https://github.com/EduardoCibernetica/Tropicosa.git*
```
cd Tropicosa
bundle install
rails server
```

# Funcionamiento
Contexto
Entidades: Cassettes
Campos: ID, Título, Artista, Año, Disquera, Precio

Como principal requisito, La Tropicosa necesita sistema en el cual se pueda capturar, editar, eliminar y mostrar los cassettes que tiene disponibles.

## Preguntas
#### 1. Describe el flujo y las herramientas que usarías para el despliegue (deployment) de las aplicaciones.

Herramientas:  Ruby on Rails es un framework de aplicaciones web de código abierto escrito en el lenguaje de programación Ruby  siguiendo el paradigma del patrón Modelo Vista Controlador (MVC).

*Como principal requisito, La Tropicosa necesita sistema en el cual se pueda capturar, editar, eliminar y mostrar los cassettes que tiene disponibles.* Por lo que se requiere de un CRUD “Create, Read, Update and Delete” 

Para generar un CRUD (create read, update y delete), ruby on rails  nos provee una herramienta o gema llamada scaffold, que no es más que un generador de Boilerplate code.


## Base de datos sqlite3


La base de datos sqlite3 se utiliza por defecto cuando se crea nueva aplicación en Ruby on Rails.
Si deseamos utilizar otra base deberemos de anexar la gema ”gem install mysql2” en el GemFile, posteriormente cargarlas gemas con un “bundle install” hay que modificar el archivo config/database.yml

```
Development:
  adapter: mysql
  database: your_db
  username: root
  password: your_pass
  socket: /tmp/mysql.sock
  host: your_db_ip     #defaults to 127.0.0.1
  port: 3306    
```

Base datos en MySql o MariaDB, la sintaxis es muy similar, o es que igual en PostgresSQL este seria un ejemplo si se implementara en MySql,  

```Mysql:
CREATE DATABASE IF NOT EXISTS 'tropicosa' ;
USE 'tropicosa';

CREATE TABLE IF NOT EXISTS 'cassettes' (
  'ID' int(11) NOT NULL AUTO_INCREMENT,
  'Artista' int(11) DEFAULT '0',
  'Titulo' varchar(50) DEFAULT NULL,
  'Año' varchar(50) DEFAULT NULL,
  'Disquera' varchar(50) DEFAULT NULL,
  'Precio' varchar(50) DEFAULT NULL,
  PRIMARY KEY ('ID')
); 
```


**Para fines practicos se usara la que biene por defecto que es sqlite3**


#### 2. ¿Que tipo de pruebas aplicarías a las aplicaciones? y ¿Qué tecnologías usarías para probar?

De forma general, aplicaría pruebas unitarias para verificar que cada uno de los módulos está funcionando correctamente ya que es una forma de comprobar el correcto funcionamiento de una unidad de código. Esto sirve para asegurar que cada unidad funcione correctamente y eficientemente por separado.

Haría pruebas para validadores para los campos que son requeridos en el caso de que fuera una aplicación usada por usuarios, verificará que un usuario no pueda modificar información que no le pertenece, como por ejemplo en caso de los cassetess en el campo precio que es un float, validar que efectivamente solo acepte este tipo de valores

En cuanto a las tecnologías que usaría para probar seria **Selenium** ya que es un es un entorno de pruebas de software para aplicaciones basadas en la web.


# Ejemplos de Funcionalidad

**http://localhost:3000/cassettes/1.json**

![](/Imagenes_Pruebas/00.jpg)

**http://localhost:3000/cassettes/2.json**

![](/Imagenes_Pruebas/01.jpg)