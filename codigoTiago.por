programa
{
	inclua biblioteca Util --> u
	
	funcao inicio(){
		
		inteiro cont, usu
		caracter op
		cadeia nome
		cadeia usuarios[100]
		cadeia nascimento [100],data
		logico sair = verdadeiro
		cont = 1
	

		enquanto(sair != falso){
			
			escreva ("\nO que vai realizar?")
			escreva ("\nDigite 1 para cadastro de novos usuários")
			escreva ("\nDigite 3 para sair do sistema")
			leia(op)
			
			escolha (op){
				caso '1':
				
					escreva ("Quantos usuários vão ser cadastrados?")
					leia(usu)
					
					enquanto (cont <= usu){
						escreva ("Digite o nome do ", cont, "°. usuário")
						leia(nome)
						
						escreva ("Digite a data de nascimento do ", cont, "°. usuário")
						leia (data)
						
						usuarios[cont - 1] = nome
						nascimento[cont - 1] = data
						cont ++
						
					}
					escreva ("Usuários cadastrados com sucesso!")
				pare
				caso '2':
					
					para(inteiro i = 0; i < 5;i++){
						se(usuarios[i] != "" ou nascimento[i] != ""){
							escreva(usuarios[i]," : ",nascimento[i],"\n")
						}
					}
				pare
				caso '3': 
					escreva ("Saindo do sistema...")
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
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuarios, 10, 9, 8}-{nascimento, 11, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */