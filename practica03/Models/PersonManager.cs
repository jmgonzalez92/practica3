using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using practica03.Models;

namespace practica03.Models
{
    public class PersonManager
       {
        public class PersonaData
        {
            public int id {get; set;}
           public string LastName {get; set;}
           public string FirstName {get; set;}
           public DateTime HireDate {get; set;}
           public DateTime EnrollmentDate {get; set;}



        }
        public List<PersonaData> GetAll()
           {
               List<PersonaData> datos = new List<PersonaData>();
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       var consulta = from personas in db.People
                                      select new PersonaData()
                                      {
                                          id = personas.PersonID,
                                          LastName = personas.LastName,
                                          FirstName = personas.FirstName,

                                      };
                       datos = consulta.ToList();
                   }
                   return datos;
               }
               catch (Exception ex)
               {
                   throw new Exception("ERROR EN ACCESO A DATOS," + ex.Message);
               }
           }
        public List<PersonaData> Get(int ID)
           {
               List<PersonaData> datos = new List<PersonaData>();
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       var consulta = from personas in db.People
                                      where personas.PersonID.Equals(ID)
                                      select new PersonaData()
                                      {
                                          id = personas.PersonID,
                                          LastName = personas.LastName,
                                          FirstName = personas.FirstName,

                                      };
                       datos = consulta.ToList();
                   }
                   return datos;
               }
               catch (Exception ex)
               {
                   throw new Exception("ERROR EN ACCESO A DATOS," + ex.Message);
               }
           }

            public bool Add(PersonaData persona)
           {
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       Person nuevo = new Person();

                       nuevo.PersonID = persona.id;
                       nuevo.FirstName = persona.FirstName;
                       nuevo.LastName = persona.LastName;
                       nuevo.HireDate = DateTime.Today;
                       nuevo.EnrollmentDate = DateTime.Today;

                       db.People.Add(nuevo);
                       db.SaveChanges();
                       return true;
                   }
               }
               catch
               {
                   return false;
               }
           }

           public bool Remove(string ID)
           {
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       string id = ID;
                       var sql = @"DELETE FROM [Empresas] WHERE CIF = {0}";
                       db.Database.ExecuteSqlCommand(sql, id);
                   }
                   return true;
               }

               catch (Exception ex)
               {
                   throw new Exception("ERROR EN ACCESO A DATOS," + ex.Message);
               }
           }

       }
}