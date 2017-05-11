# PLANEACION PRESUPUESTO NACIONAL

Esta aplicacion muestra las entidades ejecutoras de los proyectos nacionales de Colombia (makers)y sus respectivos proyectos asociados (projects). Para cada proyecto se muestra ademas la evolucion del presupuesto en pesos. 
Los datos y las asociaciones de los proyectos no son reales, la idea es mostrar una aplicacion en rails funcional con dos modelos Maker y Project que se relacionan con una asociacion uno a muchos, a la que ademas se le pueden cargar archivos csv para popular las tablas de los modelos y por otro lado expone un API REST sobre los dos modelos permitiendo buscar y filtrar por las relaciones.


## URL
Puedes ver la aplicación [aqui](https://planeacionpresupuestonal.herokuapp.com/). Está alojada en Heroku de forma gratuita, ten paciencia si demora un poco...

## Modelos y asociaciones
![modelos](./public/modelos.png?raw=true "Modelos App")

## Interfaz para los modelos
En la pagina principal puedes importar un archivo csv con los ejecutores de los proyectos y otro con los proyectos que deben estar asociados a los modelos Maker y Year a traves del maker_id y del year_id. El modelo Year simplemente contiene los años del 2002 al 2017 con los id del 1 al 16. Es importante que pongas la llave adecuada para maker_id, si no la conoces, crea el ejecutor dando click en el boton "crear ejecutor de proyecto" y luego le creas los proyectos que le corresponden a ese ejecutor llenando el formulario correspondiente.

## API
La Api que expone los modelos, permite que puedas buscar todos los makers a traves de este endopoint [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers)

* Este filtro envia un json con los makers cuyo sector contenga la palabra "congreso" [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers?sector=congreso](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers?sector=congreso)

* Este endpoint envia un json con los proyectos asociados al maker 1 [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects)

* Este filtro  envia un json con los proyectos asociador al maker 5 y cuyo nombre contenga la palabra "construccion" [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/5/projects?nombre=construccion](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/5/projects?nombre=construccion)

En general aqui se resumen las request que se le pueden hacer a la API Makers usando [httpie](https://github.com/jakubroztocil/httpie) como mi cliente HTTP, tambien puedes usar [postman](https://www.getpostman.com/)

```bash
# GET /makers
$ http https://planeacionpresupuestonal.herokuapp.com/api/v1/makers

# POST /makers
$ http POST https://planeacionpresupuestonal.herokuapp.com/api/v1/makers codigo=12345 sector=cultura unidad_ejecutora="ministerio de cultura"

# GET /makers/:id
$ http GET https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1

# PUT /makers/:id
$ http PUT https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1 codigo=1234 sector=trabajo unidad_ejecutora="ministerio del trabajo"

# DELETE /makers/:id
$ http DELETE https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1
```

y aqui se resumen las request que se le pueden hacer a la API Makers/Projects usando [httpie](https://github.com/jakubroztocil/httpie) como mi cliente HTTP, tambien puedes usar [postman](https://www.getpostman.com/)

```bash
# GET /makers/:id/projects
$ http GET https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects

# POST /makers/:id/projects
$ http POST https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects nombre="NIÑOS FELICES" year_id=12

# GET /makers/:maker_id/projects/:id
$ http GET https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects/1116

# PUT /makers/:maker_id/projects/:id
$ http PUT https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects/1116 nombre="MANTENIMIENTO"

# DELETE /makers/:maker_id/projects/:id
$ http DELETE https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects/1261
```
