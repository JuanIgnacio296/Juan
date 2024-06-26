# Entrega Nombre Apellido - NumeroDeEstudiante

exit=false 
while [ $exit == false ]; do 
    echo "Menu Principal:"
    echo "1) Listar usuarios registrados"
    echo "2) Registrar usuario"
    echo "3) Configurar letra de inicio"
    echo "4) Configurar letra de fin"
    echo "5) Salir"
    read opcion
    case $opcion in 
      1) cantDatos=a 
            while [[ ! "$cantDatos" =~ ^[0-9]+$ ]]; do
                echo "Ingresar la cantidad de datos"
                read cantDatos
            done
            suma=0
            cant=0
            prom=0
            if [[ cantDatos -ne 0 ]] then 
                for ((i=0;i<$cantDatos;i++)); do
                    dato="a"
                    while [[ ! "$dato" =~ ^[0-9]+$ ]]; do
                        echo "Ingresar numero"
                        read dato
                    done   
                    ((suma=$suma+$dato))
                    ((cant=$cant+1))
                done 
                ((prom=$suma/$cant))
            fi 
            echo $prom ;;
      2) palabra=0 
            while [[ "$palabra" =~ ^[0-9]+$ ]]; do
                echo "Ingresar una palabra"
                read palabra 
            done
            palabraRev="" 
            Largo=${#palabra} 
            for ((j=$Largo-1;j>=0;j--)); do
                palabraRev+="${palabra:$j:1}"
            done
            if [ "$palabra" = "$palabraRev" ]; then
                echo "Es capicua"
            else
                echo "No es capicua"
            fi ;;
      3) echo "Ingrese dos numeros"
          read num1
          read num2
          suma = 0
          ((suma=$num1+$num2))
          echo $suma ;;
      4) echo "Ingrese dos numeros"
          read num1
          read num2
          resta = 0
          ((resta=$num1-$num2))
          echo $resta ;;
      5) echo "Saliendo"
          exit = true ;;
  esac
done
