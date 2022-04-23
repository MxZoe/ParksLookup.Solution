using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ParksLookup.Models;
using System.Linq;

namespace ParksLookup.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class ParksController : ControllerBase
  {
    private readonly ParksLookupContext _db;
   

    public ParksController(ParksLookupContext db)
    {
      _db = db;
    }
    // GET api/Parks
    [HttpGet]
    public async Task<ActionResult<IEnumerable<Park>>> Get()
    {
      return await _db.Parks.ToListAsync();
    }

    // POST api/Parks
    [HttpPost]
    public async Task<ActionResult<Park>> Post(Park park)
    {
      _db.Parks.Add(park);
      await _db.SaveChangesAsync();

      return CreatedAtAction("Post", new { id = park.Id }, park);
    }

    // GET: api/Parks/5
     [HttpGet("{id}")]
     public async Task<ActionResult<Park>> GetId(int id)
     {
         var park = await _db.Parks.FindAsync(id);

         if (park == null)
         {
             return NotFound();
         }

         return park;
     }

    // PUT: api/Parks/5
    [HttpPut("{id}")]
    public async Task<IActionResult> Put(int id, Park park)
    {
      if (id != park.Id)
      {
        return BadRequest();
      }

      _db.Entry(park).State = EntityState.Modified;

      try
      {
        await _db.SaveChangesAsync();
      }
      catch (DbUpdateConcurrencyException)
      {
        if (!ParkExists(id))
        {
          return NotFound();
        }
        else
        {
          throw;
        }
      }

      return NoContent();
    }
    private bool ParkExists(int id)
    {
      return _db.Parks.Any(e => e.Id == id);
    }

    // DELETE: api/Parks/5
    [HttpDelete("{id}")]
    public async Task<IActionResult> DeletePark(int id)
    {
      var park = await _db.Parks.FindAsync(id);
      if (park == null)
      {
        return NotFound();
      }

      _db.Parks.Remove(park);
      await _db.SaveChangesAsync();

      return NoContent();
    }

    // GET: api/Parks/name=ZionNationalPark
    [HttpGet("name={name}")]
    public async Task<ActionResult<IEnumerable<Park>>> GetName(string name)
    {
  
      var query = _db.Parks.AsQueryable();

      if (name != null)
      {
        query = query.Where(entry => entry.Name == name);
      }


      return await query.ToListAsync();
    }

    // GET: api/parks/location=colorado
     [HttpGet("location={location}")]
     public async Task<ActionResult<IEnumerable<Park>>> GetLocation(string location)
     {
  
     var query = _db.Parks.AsQueryable();

     if (location != null)
     {
       query = query.Where(entry => entry.Location == location);
     }  

    return await query.ToListAsync();
    }

    // GET: api/parks/type=national
     [HttpGet("type={type}")]
     public async Task<ActionResult<IEnumerable<Park>>> GetType(string type)
     {
  
     var query = _db.Parks.AsQueryable();

     if (type != null)
     {
       query = query.Where(entry => entry.Type == type);
     }  

    return await query.ToListAsync();
    }
  }
}