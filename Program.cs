using Swashbuckle.AspNetCore;
using Microsoft.AspNetCore.Mvc;
using apirest_aula2006.db;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<DbLivrariaContext>(opt =>
{
    string connectionString = builder.Configuration.GetConnectionString("livrariaConnection");
    var serverVersion = ServerVersion.AutoDetect(connectionString);
    opt.UseMySql(connectionString, serverVersion);
});

builder.Services.AddSwaggerGen();
builder.Services.AddEndpointsApiExplorer();

var app = builder.Build();

app.UseSwagger();
app.UseSwaggerUI();

app.MapGet("/api/livros", ([FromServices] DbLivrariaContext _db) =>
{
    return Results.Ok(_db.TbLivro.ToList<TbLivro>());
});

app.Run();
