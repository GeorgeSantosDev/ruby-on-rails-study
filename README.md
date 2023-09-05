<h1>Criando um projeto Ruby On Rails only API do 0</h1>

Repositório do curso:

<strong>https://github.com/jacksonpires/curso_rails_api</strong>

<br>

Primeiro criamos o projeto com o comando 

```
  rails _5.0.1_ new nome_do_projeto --api
```

<br>
<hr>

<h2>Criando o primeiro CRUD</h2>

<strong>Model sempre no singular e maiúsculo</strong>

```
  rails g scaffold Model attr:type
```

Para reverter o comando acima 

```
  rails d scaffold Model
```

<br>
<hr>

<h2>Criando tasks personalizadas</h2>

```
  rails g task nome_da_task opção

  # Ao chamar a task rails nome_da_task:opção
```