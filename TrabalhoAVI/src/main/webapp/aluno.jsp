<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="br.ucsal.model.Coordenador"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Agenda de Disponibilidade de Coordenadores para Alunos</title>
<link rel="icon" href="imagens/crud.png">
<link rel="stylesheet" href="style.css">
<style>

.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.6);
}

.modal-content {
  background-color: #fff;
  margin: 10% auto;
  padding: 20px;
  border: 2px solid #000;
  border-radius: 5px;
  max-width: 600px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);

  animation: fade-in 0.4s ease-out forwards;

  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
}

.close {
  color: #000;
  position: absolute;
  right: 10px;
  top: 10px;
  font-size: 24px;
  font-weight: bold;
  cursor: pointer;
}

.close:hover,
.close:focus {
  color: #f00;
}

td.coordenador:hover {
  color: blue;
  text-decoration: underline;
}

</style>
</head>
<body>

<div id="modal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <p id="modal-text"></p>
  </div>
</div>

    <img src=" " class=" ">
    <h1>Agenda de Disponibilidade de Coordenadores</h1>

    
    <table id="tabela">
       <thead>
    <tr>
      <th>Nome</th>
      <th>Curso</th>
      <th>Período de Disponibilidade</th>
    </tr>
  </thead>
  <tbody>
   <tr>
  <td class="coordenador" data-coordenador="Santiago de Almeida, telefone: (XX) XXXX-XXXX, email: santiago@exemplo.com, sala: C201" rowspan="6" style="cursor: pointer;">Santiago de Almeida</td>
  <td rowspan="6">Engenharia Civil/Mecânica</td>
  <td>Segunda-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    <tr>
      <td class="coordenador" data-coordenador="Juniano de Oliveira Neto, telefone: (XX) XXXX-XXXX, email: juniano@exemplo.com, sala: B192" rowspan="8" style="cursor: pointer;">Juniano de Oliveira Neto</td>
      <td rowspan="8">Medicina</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 13:10 até 17:50</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Manuela Santos, telefone: (XX) XXXX-XXXX, email: manuela@exemplo.com, sala: C208" rowspan="8" style="cursor: pointer;">Manuela Santos</td>
      <td rowspan="8">Direito</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 20:00 até 23:30</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Douglas Silva Santos, telefone: (XX) XXXX-XXXX, email: douglas@exemplo.com, sala: A090" rowspan="8" style="cursor: pointer;">Douglas Silva Santos</td>
      <td rowspan="8">Pedagogia</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 7:00 até 12:30</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Camila Freitas Schmidt, telefone: (XX) XXXX-XXXX, email: camila@exemplo.com, sala: B126" rowspan="8" style="cursor: pointer;">Camila Freitas Schmidt</td>
      <td rowspan="8">Engenharia de Software</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 7:00 até 11:40</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Daniela Santana, telefone: (XX) XXXX-XXXX, email: daniela@exemplo.com, sala: C238" rowspan="8" style="cursor: pointer;">Daniela Santana</td>
      <td rowspan="8">Medicina</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 18:00 até 22:00</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Carlos Camilo, telefone: (XX) XXXX-XXXX, email: carlos@exemplo.com, sala: B240" rowspan="8" style="cursor: pointer;">Carlos Camilo</td>
      <td rowspan="8">Teologia</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 8:10 até 12:30</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
    <tr>
      <td class="coordenador" data-coordenador="Paulo Freitas, telefone: (XX) XXXX-XXXX, email: paulo@exemplo.com, sala: C450" rowspan="8" style="cursor: pointer;">Paulo Freitas</td>
      <td rowspan="8">Matemática</td>
        <tr>
    <td>
    </tr>
      <td>Segunda-feira - 13:00 até 17:00</td>
    </tr>
    
    <tr>
  <td>Terça-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quarta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Quinta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sexta-feira - Manhã às 9:50 até 12:00</td>
</tr>

<tr>
  <td>Sábado - Manhã às 9:50 até 12:00</td>
</tr>
    
  </tbody>
</table>
    <script src="scriptavi/confirmador.js"></script>
    <script src="scriptavi/popup.js"></script>
</body>
</html>
