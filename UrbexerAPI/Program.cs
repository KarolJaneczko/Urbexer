using APIpz;
using APIpz.Authorization;
using APIpz.entities;
using APIpz.Middleware;
using APIpz.Models;
using APIpz.Models.Validators;
using APIpz.Services;
using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using NLog.Web;
using System.Text;

var builder = WebApplication.CreateBuilder(args);
builder.Logging.ClearProviders();
builder.Host.UseNLog();
var authenticationSettings = new AuthenticationSettings();
builder.Configuration.GetSection("Authentication").Bind(authenticationSettings);

builder.Services.Configure<AuthenticationSettings>(builder.Configuration.GetSection("Authentication"));
builder.Services.AddSingleton(authenticationSettings);
builder.Services.AddAuthentication(option =>
{
    option.DefaultAuthenticateScheme = "Bearer";
    option.DefaultScheme = "Bearer";
    option.DefaultChallengeScheme = "Bearer";
}).AddJwtBearer(cfg =>
{
    cfg.RequireHttpsMetadata = false;
    cfg.SaveToken = true;
    cfg.TokenValidationParameters = new TokenValidationParameters
    {
        ValidIssuer = authenticationSettings.JwtIssuer,
        ValidAudience = authenticationSettings.JwtIssuer,
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(authenticationSettings.JwtKey)),
    };

});


// Add services to the container.
builder.Services.AddScoped<IAuthorizationHandler, ResourceOperationRequirementHandler>();
builder.Services.AddControllers().AddFluentValidation();
builder.Services.AddDbContext<BazaDbContext>();
builder.Services.AddScoped<IUserContextService, UserContextService>();
builder.Services.AddScoped<ILoginService, LoginService>();
builder.Services.AddScoped<IUrbexService, UrbexService>();
builder.Services.AddScoped<ErrorHandlingMiddleware>();
builder.Services.AddScoped<IPasswordHasher<Uzytkownik>, PasswordHasher<Uzytkownik>>();
builder.Services.AddScoped<IValidator<RegisterUserDto>, RegisterUserDtoValidator>();
builder.Services.AddScoped<IValidator<ConfirmUserDto>, ConfirmUserDtoValidator>();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddTransient<IEmailSender, EmailSender>();
builder.Services.Configure<AuthMessageSenderOptions>(builder.Configuration);
builder.Services.AddHttpContextAccessor();
var app = builder.Build();

//Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseMiddleware<ErrorHandlingMiddleware>();
app.UseAuthentication();

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
