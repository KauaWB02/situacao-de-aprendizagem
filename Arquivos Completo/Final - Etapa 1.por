programa
{
	
	funcao inicio()
	{
		inteiro quantiCadastro,optcao = 1,contador
		logico encerrar = verdadeiro
		cadeia nomeUsuarios[100],dataNascimento[100],data,nome
		contador =1

		
		enquanto(encerrar != falso){ //Kaua
			se(optcao < 1){ // Kauã
				
				// Mostra a msg do menu
				escreva("\nEscolha uma opção\n 1 - Cadastrar usuário\n 2 - Listar todos os usuários\n 3 - Sair do sistema \n \n")
				leia(optcao)
				
			}
			escolha(optcao){
				caso 1:
				
					escreva("Quantos usuarios você vai cadastrar? \n \n")
					leia(quantiCadastro)
					
					enquanto (contador <= quantiCadastro ou quantiCadastro < contador){ //Tiago
						
						se(quantiCadastro == 0){
							escreva("Você cadastrou todos os usuários\n\n")
							limpa()
							pare
						}
						
						escreva ("\nDigite o nome do ", contador , "°. usuário \n")
						leia(nome)
						
						escreva ("\nAgora digite a data de nascimento do ", contador , "°. usuário \n")
						leia (data)
						
						nomeUsuarios[contador - 1] = nome
						dataNascimento[contador - 1] = data
						
						contador++
						quantiCadastro--
					}//Tiago
					optcao = 0
				pare
				caso 2:
					optcao = 0
					para(inteiro i = 0; i < contador - 1;i++){ // Kaua
						se(nomeUsuarios[i] != "" ou dataNascimento[i] != ""){
							escreva(nomeUsuarios[i]," : ",dataNascimento[i],"\n")
						}
					}//Kaua
					
				pare
				caso 3:
					//Kaua
					escreva(" \n Volte sempre! \n")
					encerrar = falso
					//Kaua
				pare
				caso contrario:
					escreva("Opção inválida, Encerrando algoritmo...")
					encerrar = falso
				pare
			}
		}//Kaua
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */