programa
{
	
	funcao inicio()
	{
		inteiro usuarios,opt = 1
		logico sair = verdadeiro
		
		escreva("Quantos usuarios você vai cadastrar?")
		leia(usuarios)
		
		enquanto(sair != falso){
			se(opt < 1){
				// Mostra a msg do menu
				escreva("Escolha uma opção\n")
				leia(opt)
			}
			escolha(opt){
				caso 1:
					opt = 0
					escreva("Deu tudo certo 1\n")
					
				pare
				caso 2:
					opt = 0
					escreva("Deu tudo certo 2\n")
					
				pare
				caso 3:
				
					escreva("Deu tudo certo 3\n")
					sair = falso
				pare
				caso contrario:
					escreva("Você botou uma opção errada")
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
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opt, 6, 19, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */