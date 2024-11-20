using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;

namespace MovieApp.Controllers
{
    public class DetayController : Controller
    {
        private readonly string connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        private async Task<Movie> GetMovieById(int movieId)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var query = "SELECT * FROM Movies WHERE MovieId = @MovieId;";
                return await connection.QueryFirstOrDefaultAsync<Movie>(query, new { MovieId = movieId });
            }
        }

        public async Task<IActionResult> Index(int id)
        {
            Console.WriteLine($"Received id: {id}");

            var movie = await GetMovieById(id);

            if (movie == null)
            {
                Console.WriteLine($"No movie found for id: {id}");
                return NotFound("Film bulunamadı.");
            }

            return View(movie);
        }
    }
}
