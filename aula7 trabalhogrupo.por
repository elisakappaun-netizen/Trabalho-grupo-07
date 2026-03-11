programa
{
	
inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro hotel[8][15]

		iniciarVetor(hotel)
		menuHotel(hotel)
		
	}

	funcao iniciarVetor(inteiro hotel[][]) 	{
		para(inteiro andar = 0; andar < 8; andar++) {
			para(inteiro quarto = 0; quarto < 15; quarto++) {
				hotel[andar][quarto] = 0
			}
		}
	}
	funcao menuHotel(inteiro hotel[][]) {
		inteiro opcao
		
		faca {

			escreva("\n== Hotel Sublime Aura&go == \n\n")
			escreva("1 - Reservar quarto\n")
			escreva("2 - Mapa de ocupação do hotel\n")
			escreva("0 - Sair\n")
			escreva("\nDigite a opção desejada: ")
			leia(opcao)

			escolha(opcao) {

				caso 1: reservarQuarto(hotel)
				limpa()
				pare
				
				caso 2: mapaOcupacao(hotel)
				pare

				caso 0: escreva("\n\nSaindo do programa... aguarde...\n\n")
				pare

				caso contrario: escreva("\nOpção inválida! Digite uma opção válida: ")
					leia(opcao)
				pare
				
			}
				
		}enquanto(opcao != 0)
	}
	
	funcao reservarQuarto(inteiro hotel[][]) {
		inteiro andar, quarto
		cadeia aux
	
		escreva("\nDigite o Nº do andar a ser reservado: ")
		leia(andar)
		andar = andar - 1
			
		escreva("\nDigite o Nº do quarto a ser reservado: ")
		leia(quarto)
		quarto = quarto - 1
			
		se(andar > 8 ou quarto > 15) {
				
			escreva("Andar ou quarto Inexistente!")
			escreva("\nAperte uma tecla para continuar...\n")
			leia(aux)
				
		}
		senao {
			se(hotel[andar][quarto] == 1){
				escreva("\nQuarto ocupado!\n\n")
				escreva("\nAperte uma tecla para continuar...\n")
				leia(aux)
			}
			senao {
				
				hotel[andar][quarto] = 1
				escreva("\nQuarto reservado com sucesso!\n")

				escreva("\nAperte enter para continuar...\n")
				leia(aux)
			}
		}
	}

	funcao mapaOcupacao(inteiro hotel[][]){

		cadeia aux
		escreva("\n== Mapa de Ocupação do Sublime Aura&go ==\n\n")
		para(inteiro andar = 0; andar < 8; andar++) {
			escreva("Andar ", (andar + 1), ": ")
			para(inteiro quarto = 0; quarto < 15; quarto++) {
				escreva(hotel[andar][quarto], " ")
				
			}
			escreva("\n")
		}
		escreva("\nAperte enter para continuar...\n")
		leia(aux)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */