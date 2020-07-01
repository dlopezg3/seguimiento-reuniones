# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



secreaties = ["Departamento Administrativo De Planeación",
              "Departamento Administrativo Del Sistema De Prevención",
              "Atencion Y Recuperacion De Desastres - DAPARD",
              "Despacho Del Gobernador",
              "Fábrica De Licores Y Alcoholes De Antioquia",
              "Gerencia De Afrodescendientes",
              "Gerencia De Auditoría Interna",
              "Gerencia De Infancia",
              "Adolescencia Y Juventud",
              "Gerencia De Seguridad Alimentaria Y Nutricional - MANA",
              "Gerencia De Servicios Públicos",
              "Gerencia Indigena",
              "Oficina De Comunicaciones",
              "Oficina Privada",
              "Secretaría De Agricultura Y Desarrollo Rural",
              "Secretaría De Educación",
              "Secretaría De Gestión Humana Y Desarrollo Organizacional",
              "Secretaría De Gobierno",
              "Secretaría De Hacienda",
              "Secretaría De Infraestructura Física",
              "Secretaría De Las Mujeres De Antioquia",
              "Secretaría De Minas",
              "Secretaría De Participación Ciudadana Y Desarrollo Social",
              "Secretaría De Productividad Y Competitividad",
              "Secretaría Del Medio Ambiente",
              "Secretaria General",
              "Secretaría Seccional De Salud Y Protección Social De Antioquia"]


secreaties.each do |s|
  sec = Secretary.new(name: s)
  sec.save
end


