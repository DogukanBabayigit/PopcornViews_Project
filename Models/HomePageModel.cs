using System;


namespace MovieApp.Models;

public class HomePageModel
{
    public AppSetting? AppSetting { get; set; }
    public IEnumerable<Social>? Socials { get; set; }
    public IEnumerable<Movie>? Movies { get; set; }
    public IEnumerable<Category>? Categories { get; set; }
}
