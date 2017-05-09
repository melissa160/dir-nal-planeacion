# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
yearn = 2001

13.times do   
  yearn += 1
  Year.create(year: yearn)
end

m1 = Maker.create(codigo: 21200, sector: "PRESIDENCIA DE LA REPÚBLICA", unidad_ejecutora: "AGENCIA COLOMBIANA PARA LA REINTEGRACIÓN DE PERSONAS Y GRUPOS ALZADOS EN ARMAS")
m1.projects.create(nombre: "IMPLEMENTACION Y DESARROLLO DE ACCIONES PARA LA REINTEGRACION DE DESMOVILIZADOS EN COMUNIDADES RECEPTORAS NACIONAL" , apropiacion_inicial: 3900000000 , apropiacion_vigente: 0, compromisos: 0, obligaciones: 0, pagos:0, 
maker_id: 1, year_id: 9)