<img src="./nlw5.webp" align="center"></img>
<h1 align="center">NextLevelWeek 5</h1>
<p align="center">Projeto <strong>Inmana</strong> desenvolvido durante a NLW 5 da Rocketseat</p>

<p align="center">
  <a aria-label="Versão do Elixir" href="https://github.com/elixir-lang/elixir/releases/tag/v1.11.0">
    <img src="https://img.shields.io/badge/elixir-1.11.0-informational?logo=elixir"></img>
  </a>
  <a aria-label="Documentação" href="https://documenter.getpostman.com/view/11521890/TzJvdcLo">
    <img src="https://img.shields.io/badge/docs-passing-green?logo=postman"></img>
  </a>
  <a aria-label="Completo" href="https://nextlevelweek.com/episodios/elixir/1/edicao/5">
    <img src="https://img.shields.io/badge/NLW-done-green?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAALVBMVEVHcExxWsF0XMJzXMJxWcFsUsD///9jRrzY0u6Xh9Gsn9n39fyMecy0qd2bjNJWBT0WAAAABHRSTlMA2Do606wF2QAAAGlJREFUGJVdj1cWwCAIBLEsRU3uf9xobDH8+GZwUYi8i6ucJwrxKE+7D0G9Q4vlYqtmCSjndr4CgCgzlyFgfKfKCVO0LrPKjmiqMxGXkJwNnXskqWG+1oSM+BSwD8f29YLNjvx/OQrn+g99oQSoNmt3PgAAAABJRU5ErkJggg=="></img>
  </a>
</p>

## 🚀 Setup
Instale a versão mais recente do Elixir, Phoenix e PostgreSQL no seu computador utilizando essas [configurações de ambiente](https://www.notion.so/Configura-es-do-ambiente-9d73d4eefa7043f593d9c768922306ca).  
Para instalar as dependências do projeto e iniciá-lo, execute:

```bash
mix deps.get # Instalar deps
mix ecto.create # Criar o database do Inmana
mix ecto.migrate # Executar migrations
mix phx.server # Executar o backend em localhost:4000
```

Existem também outros comandos CLI para desenvolvimento e testes:
```bash
mix format # Corrigir formatação do código
mix compile # Compilar o projeto para ./_build
mix test # Rodar os testes automatizados
mix test --cover # Rodar os testes automatizados + mostrar coverage
mix credo.gen.config # Gerar configurações do linter (credo)
mix credo # Rodar o linter
mix phx.routes # Listar rotas do phoenix
iex -S mix # Testar alguma funcionalidade/modulo separado diretamente pelo iex
mix ecto.gen.migration nome_da_migration # criar arquivo de migration ex.: create_supplies_table 
```
Assim que terminar, abra em seu navegador a página `localhost:4000` para acessar as rotas da aplicação.

## 📚 Documentação
A documentação do backend foi desenvolvida no Postman e pode ser acessada [por aqui](https://documenter.getpostman.com/view/11521890/TzJvdcLo).  
Caso queira fazer o download da documentação em JSON e importar no Postman, o arquivo da coleção encontra-se em [`postman_collection.json`](./postman_collection.json).

## 📜 Licença

[MIT](./LICENSE) &copy; [Rocketseat](https://rocketseat.com.br/)
