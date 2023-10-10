#opções--------------------------------------------------------------------------------------
echo "digite a operação que deseja realizar: "
echo "1) SOMA"
echo "2) SUBTRAÇÃO"
echo "3) MULTIPLICAÇÃO"
echo "4) DIVISÃO"
echo "5) RAIZ QUADRADA"
echo "6) POTÊNCIA"
echo "operação: " $op
read 

num=""
num1=""
num2=""

case $op in
#soma----------------------------------------------------------------------------------------
      1)    
            read -p "Digite o primeiro número: " $num1
            read -p "Digite o segundo número: " $num2
                  resultado=$(echo "$num1+$num2" | bc)
                  echo "Resultado final: $resultado"
                  ;;    

#subtração-----------------------------------------------------------------------------------
      2)
            read -p "Digite o primeiro número: " $num1
            read -p "Digite o segundo número: " $num2
                  resultado=$(echo "$num1-$num2" | bc)
                  echo "Resultado final: $resultado"
                  ;;          

#multiplicação-------------------------------------------------------------------------------
      3) 
            read -p "Digite o primeiro número: " $num1
            read -p "Digite o segundo número: " $num2
      resultado=$(echo "$num1*$num2" | bc)
      echo "Resultado final: $resultado"
      ;;

#divisão-------------------------------------------------------------------------------------
      4) 
                  read -p "Digite o primeiro número: " $num1
                  read -p "Digite o segundo número: " $num2
            if [$num2 = 0]; then
                  echo "ERRADO! Não é possível dividir por 0."
            else
            resultado=$(echo "scale=6; $num1/$num2" | bc)
            echo "Resultado final: $resultado"
            fi
            ;;

#raíz quadrada-------------------------------------------------------------------------------
      5) 
                  read -p "Digite um número: " $num
            if [$num -lt 0]; then
                  echo "ERRADO! Não é possível fazer raiz quadrada com número negativo."
            else
            resultado=$(echo "sqrt($num)" | bc)
            echo "Resultado final: $resultado"
            fi
            ;;

#potência------------------------------------------------------------------------------------
      7) 
                  read -p "Digite o primeiro número para ser a base: " $num1
                  read -p "Digite o primeiro número para ser o expoente: " $num2
            resultado=$(echo "$num1^$num2" | bc)
            echo "Resultado final: $resultado"
            ;;

esac
