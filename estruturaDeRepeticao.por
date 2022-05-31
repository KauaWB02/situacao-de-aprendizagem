programa
{
	
	funcao inicio()
	{
		inteiro usu,opt = 1,cont
		logico sair = verdadeiro
		cadeia usuarios[100],nascimento [100],data,nome
		cont = 1
		
		escreva("Quantos usuarios você vai cadastrar?")
		leia(usu)
		
		enquanto(sair != falso){ //Kaua
			se(opt < 1){ // Kauã
				// Mostra a msg do menu
				escreva("Escolha uma opção\n 1 - Cadastrar usuário\n 2 - Listar todos os usuários\n 3 - Sair do algoritmo")
				leia(opt)
			}
			escolha(opt){
				caso 1:
					opt = 0
					enquanto (cont <= usu){ //Tiago
						escreva ("Digite o nome do ", cont, "°. usuário")
						leia(nome)
						
						escreva ("Digite a data de nascimento do ", cont, "°. usuário")
						leia (data)
						
						usuarios[cont - 1] = nome
						nascimento[cont - 1] = data
						cont++
					}//Tiago
					
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
					escreva("Deu tudo certo 3\n")
					sair = falso
					//Kaua
				pare
				caso contrario:
					escreva("Você botou uma opção errada")
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
 * @POSICAO-CURSOR = 1176; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opt, 6, 14, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */