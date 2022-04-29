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
          new Park { Name="Acadia National Park", Location="Maine", Type="National" },
          new Park { Name="Arches National Park", Location="Utah", Type="National" },
          new Park { Name="Eldorado Canyon State Park", Location="Colorado", Type="State" },
          new Park { Name="Lory State Park", Location="Colorado", Type="State" }
         
        );
    }

        public DbSet<Park> Parks { get; set; }
    }
}