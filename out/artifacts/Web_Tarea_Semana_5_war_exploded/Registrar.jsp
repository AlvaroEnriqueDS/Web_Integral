<%--
  Created by IntelliJ IDEA.
  User: Alvaro
  Date: 11/09/2018
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tarea Desarrollo Web Integrado 2018</title>
</head>
<body>
<form action="Procesar.jsp" name="venta" method="get">
    <table border="1">
        <tr>
            <th colspan="2">Calcular El Colesterol</th>
        </tr>
        <tr>
            <td>Paciente :</td>
            <td><input type="text" name="txtpac" placeholder="ej. Alvaro" required></td>
        </tr>
        <tr>
            <td>Peso :</td>
            <td><input type="text" name="txtpes" placeholder="0.00 kg." required></td>
        </tr>
        <tr>
            <td>Valor de LDL :</td>
            <td><input type="text" name="txtldl" placeholder="00 .00" required></td>
        </tr>
        <tr>
            <td>Estatura :</td>
            <td><input type="text" name="txtest" placeholder="0.00 m." required></td>
        </tr>
        <tr>
            <td>Sexo :</td>
            <td>
                <input type="text" name="txtsex" placeholder="ej. M - F" required>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="submit" value="Calcular" name="calcular">
                <input type="reset" value="Limpiar" name="limpiar">
            </th>
        </tr>
    </table>
</form>
</body>
</html>