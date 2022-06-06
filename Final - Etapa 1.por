programa
{
	
	funcao inicio()
	{
		inteiro usu,opt = 1,cont
		logico sair = verdadeiro
		cadeia usuarios[100],nascimento [100],data,nome
		cont =1

		
		enquanto(sair != falso){ //Kaua
			se(opt < 1){ // Kauã
				// Mostra a msg do menu
				escreva("\nEscolha uma opção\n 1 - Cadastrar usuário\n 2 - Listar todos os usuários\n 3 - Sair do sistema \n \n")
				leia(opt)
			}
			escolha(opt){
				caso 1:
					escreva("Quantos usuarios você vai cadastrar? \n \n")
					leia(usu)
					enquanto (cont <= usu ou usu < cont){ //Tiago
						se(usu == 0){
							escreva("Você cadastrou todos os usuários\n\n")
							limpa()
							pare
						}
						escreva ("\nDigite o nome do ", usu , "°. usuário \n")
						leia(nome)
						
						escreva ("\nAgora digite a data de nascimento do ", usu , "°. usuário \n")
						leia (data)
						
						usuarios[cont - 1] = nome
						nascimento[cont - 1] = data
						cont++
						usu--
					}//Tiago
					opt = 0
				pare
				caso 2:
					opt = 0
					para(inteiro i = 0; i < 5;i++){ // Kaua
						se(usuarios[i] != "" ou nascimento[i] != ""){
							escreva(usuarios[i]," : ",nascimento[i],"\n")
						}
					}//Kaua
					
				pare
				caso 3:
					//Kaua
					escreva(" \n Volte sempre! \n")
					sair = falso
					//Kaua
				pare
				caso contrario:
					escreva("Opção inválida")
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
 * @POSICAO-CURSOR = 608; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usu, 6, 10, 3}-{opt, 6, 14, 3}-{cont, 6, 22, 4}-{usuarios, 8, 9, 8}-{nascimento, 8, 23, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */