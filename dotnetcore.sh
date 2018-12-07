## Using database to create the api we use the following
## first install the dependencies (use the dotnet cli)

## make sure you are in the folder wher the project.cs and startup.cs file are
Install-Package Microsoft.EntityFrameworkCore.SqlServer
Install-Package Microsoft.EntityFrameworkCore.Tools
Install-Package Microsoft.EntityFrameworkCore.SqlServer.Design

##modify the following to your database
##dotnet ef dbcontext scaffold "server=localhost,1433;user=sa;password=@Eadwine2018;database=model" Microsoft.EntityFrameworkCore.SqlServer -o Models

## scaffolding the controller using the dotnet core cli

## first install the dependency to the code

## dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Tools



dotnet aspnet-codegenerator controller \
    -name CarsController \
    -api \
    -async \
    -m RailOps.Api.Entities.Roster.Car \
    -dc RailOpsContext \
    -namespace RailOps.Api.Controllers \
    -outDir Controllers



Scaffold-DbContext "Server=.;Database=Chinook;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models

"ConnectionStrings": {
    "ChinookDb": "Server=.;Database=Chinook;Trusted_Connection=True;"
  },
  
var connection = Configuration.GetConnectionString("ChinookDb");
            services.AddDbContext<ChinookContext>(options => options.UseSqlServer(connection));
