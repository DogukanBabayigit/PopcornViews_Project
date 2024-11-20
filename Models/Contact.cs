using System;

namespace MovieApp.Models;

public class Contact
{
  public int Id { get; set; }
  public string? Name { get; set; }
  public string? Email { get; set; }
  public string? Subject { get; set; }
  public string? Message { get; set; }
  public DateTime SendingTime { get; set; }
  public int ContactId { get; set; }
}