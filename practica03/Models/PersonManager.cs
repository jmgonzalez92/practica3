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

           public bool fechah;

           public bool fechae;
        }

        public List<PersonaData> GetAll()
           {
               List<PersonaData> datos = new List<PersonaData>();
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       var consulta = from personas in db.People
                                      select personas;
                       foreach (Person p in consulta)
                       {
                           PersonaData pData = new PersonaData()
                           {
                               id = p.PersonID,
                               LastName = p.LastName,
                               FirstName = p.FirstName,
                           };
                           if (p.HireDate.HasValue)
                           {
                               pData.HireDate = p.HireDate.Value;
                           }
                           if (p.EnrollmentDate.HasValue)
                           {
                               pData.EnrollmentDate = p.EnrollmentDate.Value;
                           }
                           datos.Add(pData);
                       }
                   }
               }
               catch (Exception ex)
               {
                   throw new Exception("ERROR EN ACCESO A DATOS," + ex.Message);
               }
            return datos;
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

           public bool Remove(int ID)
           {
               try
               {
                   using (SchoolEntities db = new SchoolEntities())
                   {
                       string id = ID;
                       var sql = @"DELETE FROM [Person] WHERE PersonID = {0}";
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