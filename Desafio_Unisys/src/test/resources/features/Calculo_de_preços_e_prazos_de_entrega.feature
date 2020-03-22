#language: pt

Funcionalidade: Calculo de pre�os e prazos de entrega
	Como usu�rio do sistema, eu quero consultar as informa��es sobre prazo e custo de uma entrega
Para que eu possa decidir qual a melhor forma de envio de um produto


Contexto: 
  Dado que eu acesso a pagina de Precos e Prazos do correio "http://www2.correios.com.br/sistemas/precosPrazos/"
  
  Cenario: Calculo de preco e prazo de entrega com dados validos
    Dado que eu envio uma caixa via "SEDEX", da origem "34006-056", para o destino "04711-130", com a embalagem "Outra Embalagem"
    E com as seguintes dimensoes em cm: Largura "18", Comprimento "27", Altura "9", e pesando "2"kg a ser entregue em maos "M�o pr�pria". 
 	  Quando eu Clicar no botao Calcular
    Entao verifico "Prazo de entrega" 
    E exibicao do "Valor" ou "Valor Total"
    

  Cenario: Calculo de pre�o e prazo de entrega com Cep de origem invalido
    Dado que eu envio uma caixa via "SEDEX", da origem "10101-010", para o destino "04711-130", com a embalagem "Outra Embalagem"
    E com as seguintes dimensoes em cm: Largura "18", Comprimento "27", Altura "9", e pesando "2"kg a ser entregue em maos "M�o pr�pria".
    Quando eu Clicar no botao Calcular
    Entao verifica mensagem  "CEP de origem nao encontrado na base de dados dos Correios (-1)"
