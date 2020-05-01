using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebApplication3.Models;
using WebApplication3.Baza;

namespace WebApplication3.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Index()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public IActionResult BookView()
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            return View(conn.GetAllBooks());
        }
        public IActionResult AdminView()
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            return View(conn.GetAllAdmins());
        }
        public IActionResult ReaderView()
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            return View(conn.GetAllReaders());
        }
        public IActionResult RentalView()
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            return View(conn.GetAllRentals());
        }
        public IActionResult Edit(int Id, int available)
        {
            Book book = new Book();
            book.BooksID = Id;
            book.Available = available;
            return View(book); 
        }

        [HttpPost]
        public IActionResult Edit(Book book)
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            conn.EditBook(book.BooksID, book.Title, book.Author,book.Edition,book.Genre,book.Available);
            return RedirectToAction("BookView"); 
        }

        [HttpGet]
        public ActionResult Delete(int Id, int available, string author, string title, int edition, string genre)
        {
            Book book = new Book();
            book.BooksID = Id;
            book.Title = title;
            book.Available = available;
            book.Genre = genre;
            book.Author = author;
            book.Edition = edition;

            return View(book);

        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int Id)
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            conn.DeleteBook(Id);

            return RedirectToAction("BookView");
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Book book)
        {
            ConnectionDB conn = HttpContext.RequestServices.GetService(typeof(WebApplication3.Baza.ConnectionDB)) as ConnectionDB;
            conn.CreateBook(book.BooksID, book.Title, book.Author, book.Edition, book.Genre, book.Available);
            return RedirectToAction("BookView");
            
        }
    }
}
