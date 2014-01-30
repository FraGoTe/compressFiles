#Definiendolas funciones

# Definiendo la funcion que guarda el parametro Nombre de carpeta
fnValidaCarpeta(){
	if [ -d "$1" ];
	then
		echo "Seleccione que hacer con la carpeta $1"
    echo "-----------------------------------------------"
	else
		echo "LA CARPETA $1 NO EXISTE"
		echo "========================="
		echo "Ingresar en el bash: "
		echo "# sh comprimir.sh nombreDeLaCarpeta"
		echo ""
		echo ""
	exit
	fi
}

# Definiendo la funcion que comprime los estilos
fnComprimeEstilos(){
    clear
    echo "Empezando el proceso de compresion de los Estilos de $1"
    tar -czvf "$1".tar.gz "$1"/css/  "$1"/img/ "$1"/js/ "$1"/.htaccess "$1"/index.php
    echo "Proceso finalizado archivo $1.tar.gz creado"
}
# Definiendo la funcion que comprime los adjuntos
fnComprimeAdjuntos(){
    clear
    echo "Empezando el proceso de compresion de los Adjuntos de $1"
    tar -czvf "$1".tar.gz "$1"/fotos/ "$1"/documentos/ "$1"/excel/
    echo "Proceso finalizado archivo $1.tar.gz creado"
}
# Definiendo la funcion de compresion de la toda la carpeta
fnComprimeTodo(){
    clear
    echo "Empezando el proceso de compresion de la carpeta $1"
    tar -czvf "$1".tar.gz "$1"
    echo "Proceso finalizado archivo $1.tar.gz creado"
}
# Definiendo los creditos
fnCeditos(){
    echo "Developed by FraGoTe"
    exit 1
}

#Fin de Definicion de las funciones

clear

fnValidaCarpeta $1

echo "1. Comprimir Carpeta (SOLO ESTILOS)"
echo "2. Comprimir Carpeta (SOLO ADJUNTOS)"
echo "3. Comprimir Carpeta (TODO)"
echo "4. Creditos"
echo "5. Salir"

read valOpcion

#Validando que el dato ingresado sea un numero
#regexNumber = '^[0-9]+$'

#if ! [ $varNumber =~ $regexNumber ] ; then
#   echo "Error el dato ingresado no es un numero" >&2; exit 1
#fi
case "$valOpcion" in
        "1")
           fnComprimeEstilos $1
         ;;
        "2")
           fnComprimeAdjuntos $1
         ;;
        "3")
           fnComprimeTodo $1
         ;;
        "4")
           fnCreditos
         ;;
         *)
           exit 1
        ;;
esac