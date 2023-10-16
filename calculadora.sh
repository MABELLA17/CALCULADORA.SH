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
#soma----------------------------------------------------------------------------------------
		1) 
			echo "Digite o primeiro número: "
			read $num1
			echo "Digite o segundo número: " 
			read $num2
			resultado=$(echo "$num1+$num2" | bc)
			echo "Soma final: $resultado"
		;;

#subtração-----------------------------------------------------------------------------------
		2)   
			echo "Digite o primeiro número: " 
			read $num1
			echo "Digite o segundo número: " 
			read $num2
			resultado=$(echo "$num1-$num2" | bc)
			echo "Subtração final: $resultado"
		;;

#multiplicação-------------------------------------------------------------------------------
		3)     
			echo "Digite o primeiro número: " 
			read $num1
			echo "Digite o segundo número: " 
			read $num2
			resultado=$(echo "$num1*$num2" | bc)
			echo "Multiplicação final: $resultado"
		;;

#divisão------------------------------------------------------------------------------------
		 4)
			echo "Digite o primeiro número: " 
			read $num1
			echo "Digite o segundo número: " 
			read $num2
			if [$num2 = 0]; then
			echo "ERRADO! Não é possível dividir por 0."
			else
			resultado=$(echo "scale=6; $num1/$num2" | bc)
			echo "Divisão final: $resultado"
			fi
		;;

#raíz quadrada-------------------------------------------------------------------------------
		5)	
			echo "Digite um número: " 
			read $num
			if [$num = 0]; then
			echo "ERRADO! Não é possível fazer raiz quadrada com 0"
			else
			resultado=$(echo "sqrt($num)" | bc)
			echo "Raiz quadrada final: $resultado"
			fi
		;;

#potência------------------------------------------------------------------------------------
		6)      
			echo "Digite um número para ser a base: " 
			read $num1
			echo "Digite um número para ser o expoente: " 
			read $num2
			resultado=$(echo "$num1**$num2" | bc)
			echo "Potência final: $resultado"
		;;
esac

