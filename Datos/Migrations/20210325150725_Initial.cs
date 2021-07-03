﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Datos.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Clientes",
                columns: table => new
                {
                    Cedula = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(50)", nullable: true),
                    Edad = table.Column<int>(nullable: false),
                    Sexo = table.Column<string>(type: "nvarchar(10)", nullable: true),
                    Telefono = table.Column<decimal>(type: "decimal(15,2)", nullable: false),
                    Correo = table.Column<string>(type: "nvarchar(30)", nullable: true),
                    Direccion = table.Column<string>(type: "nvarchar(30)", nullable: true),
                    Hospedajes = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Clientes", x => x.Cedula);
                });

            migrationBuilder.CreateTable(
                name: "Empleados",
                columns: table => new
                {
                    Cedula = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(50)", nullable: true),
                    Edad = table.Column<int>(nullable: false),
                    Sexo = table.Column<string>(type: "nvarchar(10)", nullable: true),
                    Telefono = table.Column<decimal>(type: "decimal(15,2)", nullable: false),
                    Correo = table.Column<string>(type: "nvarchar(30)", nullable: true),
                    Direccion = table.Column<string>(type: "nvarchar(30)", nullable: true),
                    Cargo = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Horario = table.Column<string>(type: "nvarchar(30)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Empleados", x => x.Cedula);
                });

            migrationBuilder.CreateTable(
                name: "Habitaciones",
                columns: table => new
                {
                    Idhabitacion = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Tipo = table.Column<string>(type: "nvarchar(15)", nullable: true),
                    Costo = table.Column<decimal>(type: "decimal(15,2)", nullable: false),
                    Estado = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Usos = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Habitaciones", x => x.Idhabitacion);
                });

            migrationBuilder.CreateTable(
                name: "Productos",
                columns: table => new
                {
                    Idproducto = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Descripcion = table.Column<string>(type: "nvarchar(40)", nullable: true),
                    Stock = table.Column<int>(nullable: false),
                    Vrunitario = table.Column<decimal>(type: "decimal(15,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Productos", x => x.Idproducto);
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Username = table.Column<string>(nullable: false),
                    Password = table.Column<string>(nullable: true),
                    Role = table.Column<string>(nullable: true),
                    State = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Username);
                });

            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    Iduser = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Typeuser = table.Column<string>(type: "nvarchar(15)", nullable: true),
                    Password = table.Column<string>(type: "nvarchar(30)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.Iduser);
                });

            migrationBuilder.CreateTable(
                name: "Checkins",
                columns: table => new
                {
                    Idcheckin = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Idhabitacion = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Idcliente = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Numeroinvitados = table.Column<int>(nullable: false),
                    Fechaentrada = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Checkins", x => x.Idcheckin);
                    table.ForeignKey(
                        name: "FK_Checkins_Clientes_Idcliente",
                        column: x => x.Idcliente,
                        principalTable: "Clientes",
                        principalColumn: "Cedula",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Checkins_Habitaciones_Idhabitacion",
                        column: x => x.Idhabitacion,
                        principalTable: "Habitaciones",
                        principalColumn: "Idhabitacion",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Checkouts",
                columns: table => new
                {
                    Idcheckout = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Idhabitacion = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Idcliente = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Numeroinvitados = table.Column<int>(nullable: false),
                    Fechaentrada = table.Column<DateTime>(nullable: false),
                    Fechasalida = table.Column<DateTime>(nullable: false),
                    DiasHospedaje = table.Column<int>(nullable: false),
                    TotalHospedaje = table.Column<decimal>(type: "decimal(15,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Checkouts", x => x.Idcheckout);
                    table.ForeignKey(
                        name: "FK_Checkouts_Clientes_Idcliente",
                        column: x => x.Idcliente,
                        principalTable: "Clientes",
                        principalColumn: "Cedula",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Checkouts_Habitaciones_Idhabitacion",
                        column: x => x.Idhabitacion,
                        principalTable: "Habitaciones",
                        principalColumn: "Idhabitacion",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Reservas",
                columns: table => new
                {
                    Idreserva = table.Column<string>(type: "nvarchar(20)", nullable: false),
                    Idhabitacion = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Idcliente = table.Column<string>(type: "nvarchar(20)", nullable: true),
                    Numeroinvitados = table.Column<int>(nullable: false),
                    Fechareserva = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Reservas", x => x.Idreserva);
                    table.ForeignKey(
                        name: "FK_Reservas_Clientes_Idcliente",
                        column: x => x.Idcliente,
                        principalTable: "Clientes",
                        principalColumn: "Cedula",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Reservas_Habitaciones_Idhabitacion",
                        column: x => x.Idhabitacion,
                        principalTable: "Habitaciones",
                        principalColumn: "Idhabitacion",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Checkins_Idcliente",
                table: "Checkins",
                column: "Idcliente");

            migrationBuilder.CreateIndex(
                name: "IX_Checkins_Idhabitacion",
                table: "Checkins",
                column: "Idhabitacion");

            migrationBuilder.CreateIndex(
                name: "IX_Checkouts_Idcliente",
                table: "Checkouts",
                column: "Idcliente");

            migrationBuilder.CreateIndex(
                name: "IX_Checkouts_Idhabitacion",
                table: "Checkouts",
                column: "Idhabitacion");

            migrationBuilder.CreateIndex(
                name: "IX_Reservas_Idcliente",
                table: "Reservas",
                column: "Idcliente");

            migrationBuilder.CreateIndex(
                name: "IX_Reservas_Idhabitacion",
                table: "Reservas",
                column: "Idhabitacion");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Checkins");

            migrationBuilder.DropTable(
                name: "Checkouts");

            migrationBuilder.DropTable(
                name: "Empleados");

            migrationBuilder.DropTable(
                name: "Productos");

            migrationBuilder.DropTable(
                name: "Reservas");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Usuarios");

            migrationBuilder.DropTable(
                name: "Clientes");

            migrationBuilder.DropTable(
                name: "Habitaciones");
        }
    }
}
