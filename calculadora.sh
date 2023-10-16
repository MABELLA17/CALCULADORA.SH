#opções--------------------------------------------------------------------------------------
echo "digite a operação que deseja realizar: " 
echo "1) SOMA"
echo "2) SUBTRAÇÃO"
echo "3) MULTIPLICAÇÃO"
echo "4) DIVISÃO"
echo "5) RAIZ QUADRADA"
echo "6) POTÊNCIA"
echo "Opção desejada: " 
read op

case $op in
		1) 
			echo "Digite o primeiro número: "
			read num1
			echo "Digite o segundo número: " 
			read num2
			echo "Soma final: "
			echo "$num1+$num2" | bc
		;;


		2)   
			echo "Digite o primeiro número: " 
			read num1
			echo "Digite o segundo número: " 
			read num2
			echo "Subtração final: "
			echo "$num1-$num2" | bc
		;;


		3)     
			echo "Digite o primeiro número: " 
			read num1
			echo "Digite o segundo número: " 
			read num2
			echo "Multiplicação final: "
			echo "$num1*$num2" | bc
		;;


		 4)
			echo "Digite o primeiro número: " 
			read num1
			echo "Digite o segundo número: " 
			read num2
			if [$num2 = 0]; then
			echo "ERRADO! Não é possível dividir por 0."
			else
			echo "Divisão final: "
			echo "scale=6; $num1/$num2" | bc
			fi
		;;


		5)	
			echo "Digite um número: " 
			read num
			if [$num = 0]; then
			echo "ERRADO! Não é possível fazer raiz quadrada com 0"
			else
			echo "Raiz quadrada final: "
			echo "sqrt($num)" | bc
			fi
		;;


		6)      
			echo "Digite um número para ser a base: " 
			read num1
			echo "Digite um número para ser o expoente: " 
			read num2
			echo "Potência final: "
			echo "$num1^$num2" | bc
		;;
esac

