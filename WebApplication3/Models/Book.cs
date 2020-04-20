using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Baza
{
    public class Book
    {
        private ConnectionDB dbcon;
        public int BooksID { get; set; }
        public int Available { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Genre { get; set; }
        public int Edition { get; set; }
    }
}
