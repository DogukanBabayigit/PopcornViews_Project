
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;
using System.Data.SqlClient;
using Dapper;

namespace MovieApp.Controllers;




public class HomeController : Controller
{
    public async Task<IActionResult> Index()
    {
    var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        // Server = localhost,1441; Database = PopcornViews; User = SA; Password = YourStrong@Passw0rd; TrustServerCertificate = true
        var connection = new SqlConnection(connectionString);

        var queryAppSetting = "select * from AppSettings";
        var appSetting = (await connection.QueryAsync<AppSetting>(queryAppSetting)).First();

        var queryMovies = "select * from Movies";
        var movies = await connection.QueryAsync<Movie>(queryMovies);


        var querySocials = "select * from Socials";
        var socials = await connection.QueryAsync<Social>(querySocials);

        var queryCategory = "select * from Categories";
        var categories = await connection.QueryAsync<Category>(queryCategory);

        HomePageModel model = new HomePageModel()
        {
            AppSetting = appSetting,
            Movies = movies,
            Socials = socials,
            Categories = categories,
        };
        return View(model);
    }



}
