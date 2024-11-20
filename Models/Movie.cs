using System;

namespace MovieApp.Models;

public class Movie
{
  public int MovieId { get; set; }
  public int CategoryId { get; set; }
  public string? MovieName { get; set; }
  public int MovieDuration { get; set; }
  public string? AboutMovie { get; set; }
  public string? Director { get; set; }
  public string? Writer { get; set; }
  public string? Star { get; set; }
  public int ImdbPoint { get; set; }
  public string? MovieImgURL { get; set; }
  public string? MovieURL { get; set; }
  public string? WatchUrl { get; set; }
}
