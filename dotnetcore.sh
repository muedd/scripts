## Using database to create the api we use the following
## first install the dependencies (use the dotnet cli)

## make sure you are in the folder wher the project.cs and startup.cs file are
## dotnet add package MySql.Data.EntityFrameworkCore

##modify the following to your database
##dotnet ef dbcontext scaffold "server=localhost,1433;user=sa;password=@Eadwine2018;database=model" Microsoft.EntityFrameworkCore.SqlServer -o Models
