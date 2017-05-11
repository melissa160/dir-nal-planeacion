# PLANEACION PRESUPUESTO NACIONAL

Esta aplicacion muestra las entidades ejecutoras de los proyectos nacionales de Colombia (makers)y sus respectivos proyectos asociados (projects). Para cada proyecto se muestra ademas la evolucion del presupuesto en pesos. 
Los datos y las asociaciones de los proyectos no son reales, la idea es mostrar una aplicacion en rails funcional con dos modelos Maker y Project que se relacionan con una asociacion uno a muchos, a la que ademas se le pueden cargar archivos csv para popular las tablas de los modelos y por otro lado expone un API sobre los dos modelos permitiendo buscar y filtrar por las relaciones.


## URL
Puedes ver la aplicación [aqui](https://planeacionpresupuestonal.herokuapp.com/). Está alojada en Heroku de forma gratuita, ten paciencia si demora un poco...

## Modelos y asociaciones
![modelos](./public/modelos.png?raw=true "Modelos App")

## Interfaz para los modelos
En la pagina principal puedes importar un archivo csv con los ejecutores de los proyectos y otro con los proyectos que deben estar asociados a los modelos Maker y Year a traves del maker_id y del year_id. El modelo Year simplemente contiene los años del 2002 al 2017 con los id del 1 al 16  

## API
La Api que expone los modelos, permite que puedas buscar todos los makers a traves de este endopoint [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers)

* Este filtro envia un json con los makers cuyo sector contenga la palabra "congreso" [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers?sector=congreso](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers?sector=congreso)

* Este endpoint envia un json con los proyectos asociados al maker 1 [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/1/projects)

* Este filtro  envia un json con los proyectos asociador al maker 5 y cuyo nombre contenga la palabra "construccion" [https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/5/projects?nombre=construccion](https://planeacionpresupuestonal.herokuapp.com/api/v1/makers/5/projects?nombre=construccion)



