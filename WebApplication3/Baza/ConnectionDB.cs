using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace WebApplication3.Baza
{

    public class ConnectionDB
    {
        public string ConnectionString { get; set; }

        public ConnectionDB(string connectionString)
        {
            this.ConnectionString = connectionString;
        }
        private MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConnectionString);
        }
        public List<Books> GetAllBooks()
        {
            List<Books> list = new List<Books>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("select * from books where idBooks < 3", conn);

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Books()
                        {
                            idBooks = Convert.ToInt32(reader["idBooks"]),
                            idReader = Convert.ToInt32(reader["idReader"]),
                            Title = reader["Title"].ToString(),
                            Author = reader["Author"].ToString(),
                            Edition = Convert.ToInt32(reader["Edition"]),
                        });
                    }
                }
            }
            return list;
        }

    }

}
