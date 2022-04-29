using Microsoft.EntityFrameworkCore;

namespace ParksLookup.Models
{
    public class ParksLookupContext : DbContext
    {
        public ParksLookupContext(DbContextOptions<ParksLookupContext> options)
            : base(options)
        {
        }
         protected override void OnModelCreating(ModelBuilder builder)
    {
      builder.Entity<Park>()
        .HasData(
          new Park { Id = 1, Name="Acadia National Park", Location="Maine", Type="National" },
          new Park { Id = 2, Name="Arches National Park", Location="Utah", Type="National" },
          new Park { Id = 3, Name="Eldorado Canyon State Park", Location="Colorado", Type="State" },
          new Park { Id = 4, Name="Lory State Park", Location="Colorado", Type="State" }
         
        );
    }

        public DbSet<Park> Parks { get; set; }
    }
}