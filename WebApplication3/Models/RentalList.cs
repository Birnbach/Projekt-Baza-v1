using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Projekt_MySql_ASP.NET.Models
{
    public class RentalList
    {
        public int RentalID { get; set; }
        public string Date { get; set; }
        public string ReturnDate { get; set; }
        public int ReaderID { get; set; }
        public int BookID { get; set; }

    }
}
