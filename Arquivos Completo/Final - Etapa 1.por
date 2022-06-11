programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Arquivos --> A
	
	funcao inicio()
	{
		//Declarando variaveis
		inteiro quantiCadastro,opcao = 1,contador,quantVezes,endereco,contNome =0,contIdade =0,flag=1,indice = 0
		logico encerrar = verdadeiro
		cadeia nomeUsuarios[100],idadeUsuarios[100],idade,nome,arquivoNome = "pessoas.txt",linha

		//Aqui tamos botando contador como 1
		contador = 0

		//Verificando se o arquivo existe
		se(A.arquivo_existe(arquivoNome)){
			
			//Abrindo arquivo para coletar dados
			endereco = A.abrir_arquivo(arquivoNome, A.MODO_LEITURA)

			//Fazendo um loop ate o arquivo chegar ao fim
			enquanto(nao A.fim_arquivo(endereco)){
				
				//Cada linha do arquivo vai ser armazeanada na variavel linha
				linha = A.ler_linha(endereco)

				// Vericando se flag é igual a 1
				se(flag == 1){

					//Vai armazenar no array o nome da linha dentro do arquivo
					nomeUsuarios[contNome] = linha
					//Vai contar mais 1 na variavel contNome
					contNome++
					//Vai deminuir 1 na variavel flag
					flag--
					//Vai contar mais 1 na variavel contador
					contador++
					//Vai contar mais 1 na variavel indice
					indice++
				}senao{
					//Vai armazenar no array a idade da linha dentro do arquivo
					idadeUsuarios[contIdade] = linha
					//Vai contar mais 1 na variavel contIdade
					contIdade++
					//Vai contar mais 1 na variavel flag
					flag++
				}
			}
			//Vai fechar o arquivo que abrimos para pegar informações
			A.fechar_arquivo(endereco)
		}senao{
			//Arquivo não existe no mesmo diretorio
			escreva("Erro!, Arquivo não existe nesta pasta")
		}
		//Coletando dados para o sistema
		escreva("Coletando dados, Aguarde alguns segundos... \n")
		U.aguarde(1000*3)
		limpa()
		
		//Aqui quantos usuários vai ser cadastrardo
		escreva("Quantos usuários você vai cadastrar? \n")
		leia(quantiCadastro)
		limpa()

		//Enquanto o encerrar for diferente de falso no caso for verdadeiro vai continua fazendo um loop infinito
		enquanto(encerrar != falso){ 
			// se opcao for menor que 1 no caso for 0 vai entrar na estrutura de menu
			se(opcao < 1){ 

				//Vamos ver qual opção o usuário vai escolher
				escreva("\nEscolha uma opção\n")
				escreva("1 - Cadastrar usuário\n")
				escreva("2 - Listar todos os usuários\n")
				escreva("3 - Sair do sistema \n")
				leia(opcao)
				escreva("\n")
				
			}
			
			/* Escolha caso opcao, essa estrutura vai ver qual valor foi armazenado na variavel opcao
			* se for 1 vai cadastrar
			* se for 2 vai listar
			* se for 3 vai finalizar o algoritmo
			*/ 
			escolha(opcao){
				
				caso 1:
				//se a quantidade de cadastro for 0 vai perguntar quantos cadastro vai fazer de novo
					se(quantiCadastro == 0){
						
						//Aqui quantos usuários vai ser cadastrardo
						escreva("Quantos usuários você vai ser cadastrado? \n")
						leia(quantiCadastro)
						limpa()
					}
					//quantVezes essa variavel vai ficar responsavel pelo menu toda vez que cadastrar um usuário
					quantVezes = 0
					
					//Enquanto contador for menor ou igual a quantiCadastro vai continuar no loop
					// Ou quantiCadastro < que contador vai continuar no loop
					enquanto (contador <= quantiCadastro ou quantiCadastro < contador){

						// se quantVezes for igual a 1 vai para o menu, toda vez que cadastrar um usuário
						se(quantVezes == 1){
							opcao  = 0
							limpa()
							pare
						}

						//Qual o nome do usuário que sera cadastrardo
						escreva ("Digite nome do(a) usuário(a): \n")
						leia(nome)

						//Qual a idade do usuário que sera cadastrardo
						escreva ("Agora digite a idade do(a) ", nome,": \n")
						leia(idade)

						//Aqui vamos colocar o nome do usuário no vetor
						nomeUsuarios[contador - 1] = nome

						//Aqui vamos colocar a idade do usuário no vetor
						idadeUsuarios[contador - 1] = idade

						//Tamos botando 1 toda vez que passar no loop
						contador++
						//Tamos tirando 1 toda vez que passar no loop
						quantiCadastro--
						//Tamos botando 1 toda vez que passar no loop
						quantVezes++
					}
				pare
				caso 2:
					escreva("Lista de todos os usuários cadastrados:\n")
					// Vai fazer um loop pelo vetores que usamos para fazer uma listagem
					para(inteiro i = 0; i < contador - 1;i++){
						/*
						 * Aqui tamos verificando se nos vetores nomeUsuario[i] 
						 * idade[i] tem algum espaço vazio se tiver não escreve
						*/
						se(nomeUsuarios[i] != "" ou idadeUsuarios[i] != ""){
							escreva(nomeUsuarios[i]," : ",idadeUsuarios[i],"\n")
						}
					}
					U.aguarde(1000*3)
					// opcao vai ficar 0 e voltar para o menu
					opcao = 0
				pare
				caso 3:
					//Aqui vamos pegar todo que esta dentro dos vetores nomeUsuarios 
					// e idadeUsuarios e escrever tudo no arquivo usuarios.txt
					para(; indice < contador; indice++){
						endereco = A.abrir_arquivo(arquivoNome, A.MODO_ACRESCENTAR)
						A.escrever_linha(nomeUsuarios[indice - 1], endereco)
						A.escrever_linha(idadeUsuarios[indice - 1], endereco)
						A.fechar_arquivo(endereco)
					}
					
					//Vai encerrar o sistema
					escreva("Guardando informações, Aguarde alguns segundos...\n")
					U.aguarde(1000*3)
					limpa()
					escreva("Encerrando sistema... \n")
					encerrar = falso

				pare
				caso contrario:
					// botou uma opção errada vai voltar para o menu
					escreva("Opção inválida, Escolha uma opção valida")
					opcao = 0
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3620; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {quantiCadastro, 9, 10, 14}-{opcao, 9, 25, 5}-{contador, 9, 35, 8}-{contNome, 9, 64, 8}-{contIdade, 9, 76, 9}-{indice, 9, 96, 6}-{nomeUsuarios, 11, 9, 12}-{idadeUsuarios, 11, 27, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */