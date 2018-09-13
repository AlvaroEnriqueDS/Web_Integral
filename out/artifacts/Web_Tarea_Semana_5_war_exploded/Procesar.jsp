<%--
  Created by IntelliJ IDEA.
  User: Alvaro
  Date: 11/09/2018
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //declarar variables
    String paci="", sex ="", ecf="", ml="", trata="";
    int imag=0;
    double ldl=0, peso=0, imc=0, esta=0;

    //entrada

    paci = request.getParameter("txtpac");
    ldl = Double.parseDouble(request.getParameter("txtldl"));
    sex = request.getParameter("txtsex");
    esta = Double.parseDouble(request.getParameter("txtest"));
    peso =Double.parseDouble(request.getParameter("txtpes"));

    //proceso
    if (sex.equals("M")){
        if (ldl < 100){ ecf = "Optimo"; ml="2.59 mmol/L";}
        if (ldl >= 100 && ldl <= 129) {ecf = "SubOptimo"; ml="2.59-3.34 mmol/L";}
        if (ldl >= 130 && ldl <= 159) {ecf = "Límite alto"; ml="3.37-4.12 mmol/L";}
        if (ldl >= 160 && ldl <= 189) {ecf = "Alto"; ml="4.15-4.90 mmol/L";}
        if (ldl >= 190) {ecf = "Muy Alto"; ml="4.90 mmol/L";}
    }else{
        if (ldl < 90){ ecf = "Optimo"; ml="2.59 mmol/L";}
        if (ldl >= 90 && ldl <= 119) {ecf = "SubOptimo"; ml="2.59-3.34 mmol/L";}
        if (ldl >= 120 && ldl <= 149) {ecf = "Límite alto"; ml="3.37-4.12 mmol/L";}
        if (ldl >= 150 && ldl <= 179) {ecf = "Alto"; ml="4.15-4.90 mmol/L";}
        if (ldl >= 180) {ecf = "Muy Alto"; ml="4.90 mmol/L";}
    }

    imc = Math.round((peso/(Math.pow(esta,2)))*100)/100d;
    if (imc < 18.5){ imag = 1; trata = "Dieta";}
    if (imc >= 18.5 && imc <= 24.99) {imag= 2;}
    if (imc >= 25 && imc <= 29.99) {imag = 3;}
    if (imc >= 30 && imc <= 34.99) {imag = 4;}
    if (imc >= 35 && imc <= 39.99) {imag = 5;}
    if (imc >= 40) { imag = 6;}



    //salida
%>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tarea WEB I.</title>
    <script>
        function boton_back(){
            document.location.href = "Registrar.jsp"}
    </script>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="2">Sus Resultados</th>
    </tr>
    <tr>
        <td>Paciente:</td>
        <td><%out.print(paci);%></td>
    </tr>
    <tr>
        <td>LDL :</td>
        <td><%out.print(ldl);%></td>
    </tr>
    <tr>
        <td>Mole./L. :</td>
        <td><%out.print(ml);%></td>
    </tr>
    <tr>
        <td>IMC :</td>
        <td><%out.print(imc);%></td>
    </tr>
    <tr>
        <td>Imagen Ref.</td>
        <td><img src="imagenes/imagen0<%=imag%>.jpg" alt="referencia"></td>
    </tr>
    <tr>
        <td>Estado :</td>
        <td><%out.print(ecf);%></td>
    </tr>
</table>

<input type="button" value="Retornar" onClick="boton_back()">
</body>
</html>

