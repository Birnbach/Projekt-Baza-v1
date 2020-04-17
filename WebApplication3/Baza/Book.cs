using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Baza
{
    public class Books
    {
        private ConnectionDB dbcon;
        public int idBooks { get; set; }
        public int idReader { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public int Edition { get; set; }
    }
}
