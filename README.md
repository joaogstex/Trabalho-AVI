# Trabalho-AVI
Sistema CRUD utilizando Java Web e Banco de Dados Relacional para a criação de tabelas de disponibilidade de coordenadores de cursos da faculdade

<img align="center" alt="Java" src= "https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white"/>
<img align="center" alt="Guga-JS" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" />
<br/> <br/>

## Sobre o Trabalho-AVI
<br/>

Página de Realização do CRUD:

A Agenda de Disponibilidade de Coordenadores é uma aplicação Java Web desenvolvida para o Trabalho AVI sobre orientação do professor Mário Jorge do curso de bacharelado de Engenharia de Software, terceiro semestre, na Universidade Católica de Salvador (UCsal), para a implementação de um sistema web que relata uma quantidade de coordenadores, armazenando seus IDs (códigos de reconhecimento utilizado pelo banco de dados), nome e respectivos horários de disponibilidade.

É possível adicionar, editar, deletar e criar novos contatos. Cada ação realizada visita o banco de dados relacional criado por meio de arraylists na classe DAO. 

<br/>


<br/>

Página Inicial: 

A página inicial do CRUD revela uma tela de carregamento com duração total de 4 segundos ao usuário. Logo após o fim desse timer (feito em javascript), a página é relocada para a página login.jsp, onde o coordenador ou o aluno poderão acessar as tabelas disponíveis.

![PaginaInicial](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/loading.png)

<br/>
<br/>

Tela de Login do Usuário (Exemplo: Coordenador e Aluno): 

Como dito anteriormente, assim que o tempo de loading é exterminado, a página é relocada para uma tela de login. Aqui, o coordenador geral ou aluno podem acessar diferentes páginas com relação aos coordenadores de diferentes cursos.

![Login](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/login.png)

Ao clicar em 'Entrar' o coordenador geral é levado a uma página com acesso ao sistema CRUD.
![LoginCoordenador](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/loginCoordenador.png)
Ao clicar em 'Entrar' o aluno é relocado para uma página com acesso a uma tabela de coordenadores dos mais diversos cursos e seus horários de disponibilidade.
![LoginAluno](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/loginAluno.png)

A autenticação do nome de usuário e senhas são feitas com base no código apresentado na imagem abaixo, ambos os nomes de usuário e senha são predefinidos no código Java.

![AuteticacaoLogin](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/autenticacaoLogin.png)

<br/>
<br/>

Página de Acesso do Coordenador Geral: 

Nessa página, o responsável pela alteração de coordenadores, garantirá o seu acesso ao sistema CRUD. 

![AcessoCoordenador](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/coordenadorHTML.png)

<br/>

![CRUD](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/CRUD.png)

<br/>

![NovoContato](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/criarNovoContato.png)

<br/>

![EditarContato]()

<br/>

![ConfirmarExclusaoContato]()

![ContatoExcluido]()

<br/>

Página de Acesso do Aluno:
![AcessoAluno](https://raw.githubusercontent.com/joaogstex/Trabalho-AVI/master/imagensAVI/alunoHTML.png)

<br/>


<br/>

## Aprendizado

Projeto de estudos no campo de Java Web realizado por meio das aulas do Professor José de Assis no curso de Java Web Level 1. Segue o link a seguir: (https://www.youtube.com/watch?v=dVRYwQc8uYc)

Suas aulas foram de extrema importância para a compreensão das funcionalidades, métodos e funções de Java Web. Foi de extrema importância também para compreensão do banco de dados MySQL. Foco principal nas ferramentas back-end.

A utilização do servidor Apache Tomcat foi de extrema importância para a funcionalidade do projeto.

## Tecnologias

### Backend
- Java
- MySql
- ItextPdf
- Tomcat

### FrontEnd
- Html
- CSS
- JS
