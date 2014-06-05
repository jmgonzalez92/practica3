using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace practica03.Models
{
    public class CourseManager
    {
        public class CourseData { 
            public int CourseID { get; set; }
            public string Title { get; set; }
            public int Credits { get; set; }
            public int DepartmentID { get; set; }
        }
        public List<CourseData> GetAll()
        {
            List<CourseData> datos = new List<CourseData>();
            try
            {
                using (SchoolEntities db = new SchoolEntities())
                {
                    var consulta = from cursos in db.Courses
                                   select new CourseData()
                                   {
                                       CourseID = cursos.CourseID,
                                       Title = cursos.Title,
                                       Credits = cursos.Credits,
                                       DepartmentID = cursos.DepartmentID
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

        public List<CourseData> Get(int ID)
        {
            List<CourseData> datos = new List<CourseData>();
            try
            {
                using (SchoolEntities db = new SchoolEntities())
                {
                    var consulta = from cursos in db.Courses
                                   where cursos.CourseID.Equals(ID)
                                   select new CourseData()
                                   {
                                       CourseID = cursos.CourseID,
                                       Title = cursos.Title,
                                       Credits = cursos.Credits,
                                       DepartmentID = cursos.DepartmentID
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

        public bool Add(CourseData curso)
        {
            try
            {
                using (SchoolEntities db = new SchoolEntities())
                {
                    Course nuevo = new Course();

                    nuevo.CourseID = curso.CourseID;
                    nuevo.Title = curso.Title;
                    nuevo.Credits = curso.Credits;
                    nuevo.DepartmentID = curso.DepartmentID;

                    db.Courses.Add(nuevo);
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
                    int id = ID;
                    var sql = @"DELETE FROM [Courses] WHERE CourseID  = {0}";
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