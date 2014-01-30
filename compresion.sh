echo "Empezando el proceso de compresion de la carpeta $1"

#tar -czvf "$1".tar.gz "$1"/css/ "$1"/fotos/ "$1"/img/ "$1"/js/ "$1"/.htaccess "$1"/index.php

echo "Proceso finalizado archivo $1.tar.gz creado and going home"


#Definiendolas funciones

# Definiendo la funcion que guarda el parametro Nombre de carpeta
fnObtenerCarpeta(){
	echo "Ingrese el nombre de la carpeta a comprimir: "
	
	read CARPETA
	
	if [ -d CARPETA ];
	then
		return CARPETA
	else
		echo "LA CARPETA NO EXISTE"
		exit
	fi
}

# Definiendo la funcion de crear estilos
fnComprimeEstilos(){
    echo "Crear usuario"
    exit 1
}
# Definiendo la funcion de eliminar usuario
fnComprimeAdjuntos(){
    echo "Eliminar usuario"
    exit 1
}
# Definiendo la funcion de modificar usuario
fnComprimeTodo(){
    echo "Modificar usuario"
    exit 1
}
# Definiendo los creditos
fnCeditos(){
    echo "Developed by FraGoTe"
    exit 1
}

#Fin de Definicion de las funciones


echo "Selecciones una opcion"
echo "1. Comprimir carpeta (SOLO ESTILOS)"
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
		   CARPETA = fnObtenerCarpeta
           fnComprimeEstilos CARPETA
         ;;
        "2")
		   CARPETA = fnObtenerCarpeta
           fnComprimeAdjuntos CARPETA
         ;;
        "3")
		   CARPETA = fnObtenerCarpeta
           fnComprimeTodo CARPETA
         ;;
        "4")
           fnCreditos
         ;;
         *)
           exit 1
        ;;
esac
