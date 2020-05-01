using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySql.Data;
using WebApplication3.Models;


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
        public List<Book> GetAllBooks()
        {
            List<Book> list = new List<Book>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("select * from books where BooksID < 50", conn);

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Book()
                        {
                            BooksID = Convert.ToInt32(reader["BooksID"]),
                            Title = reader["Title"].ToString(),
                            Genre = reader["Genre"].ToString(),
                            Author = reader["Author"].ToString(),
                            Edition = Convert.ToInt32(reader["Edition"]),
                            Available = Convert.ToInt32(reader["Available"]),
                        });
                    }
                }
            }
            return list;
        }
        public List<Administration> GetAllAdmins()
        {
            List<Administration> list = new List<Administration>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("select * from administrator where AdminID < 10", conn);

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Administration()
                        {
                            AdminID = Convert.ToInt32(reader["AdminID"]),
                            Name = reader["Name"].ToString(),
                            Email = reader["Email"].ToString(),
                            PhoneNum = Convert.ToInt32(reader["PhoneNum"]),
                        });
                    }
                }
            }
            return list;
        }
        public List<Reader> GetAllReaders()
        {
            List<Reader> list = new List<Reader>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("select * from reader where ReaderID < 10", conn);

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Reader()
                        {
                            ReaderID = Convert.ToInt32(reader["ReaderID"]),
                            Name = reader["Name"].ToString(),
                            Email = reader["Email"].ToString(),
                            PhoneNum = Convert.ToInt32(reader["PhoneNum"]),
                        });
                    }
                }
            }
            return list;
        }
        public List<RentalList> GetAllRentals()
        {
            List<RentalList> list = new List<RentalList>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("select * from rental_list where RentalID < 10", conn);

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                         list.Add(new RentalList()
                        {
                            RentalID = Convert.ToInt32(reader["RentalID"]),
                            Date = reader["Date"].ToString(),
                            ReturnDate = reader["ReturnDate"].ToString(),
                            ReaderID = Convert.ToInt32(reader["ReaderID"]),
                            BookID = Convert.ToInt32(reader["BookID"])
                        });
                    }
                }
            }
            return list;
        }
        public void EditBook(int BooksID, string Title, string Author, int Edition, string Genre, int Available)
        {
            
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();

                using (MySqlCommand cmd = new MySqlCommand("UPDATE new_schema.books SET Title = @Title, Author = @Author, Edition = @Edition, Genre = @Genre, Available = @Available WHERE BooksID = @BooksID", conn))
                {
                    cmd.Parameters.AddWithValue("@BooksID", BooksID);
                    cmd.Parameters.AddWithValue("@Title", Title);
                    cmd.Parameters.AddWithValue("@Author", Author);
                    cmd.Parameters.AddWithValue("@Edition", Edition);
                    cmd.Parameters.AddWithValue("@Genre", Genre);
                    cmd.Parameters.AddWithValue("@Available", Available);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
        public void DeleteBook(int BooksID)
        {
            using(MySqlConnection conn = GetConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM new_schema.books WHERE BooksID = @BooksID",conn))
                {
                    cmd.Parameters.AddWithValue("@BooksID", BooksID);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
        public void CreateBook(int BooksID, string Title, string Author, int Edition, string Genre, int Available)
        {

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();

                using (MySqlCommand cmd = new MySqlCommand("INSERT INTO new_schema.books (BooksID, Title, Author, Edition, Genre, Available)  VALUES (@BooksID, @Title, @Author, @Edition, @Genre, @Available)", conn))
                {
                    cmd.Parameters.AddWithValue("@BooksID", BooksID);
                    cmd.Parameters.AddWithValue("@Title", Title);
                    cmd.Parameters.AddWithValue("@Author", Author);
                    cmd.Parameters.AddWithValue("@Edition", Edition);
                    cmd.Parameters.AddWithValue("@Genre", Genre);
                    cmd.Parameters.AddWithValue("@Available", Available);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

    }

}
