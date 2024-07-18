#/bin/bash



VARUSR="alpha beta gemma"

for VAR in $VARUSR
do
   echo "#################"
   echo "Adding new users"
   echo "#################"

   useradd $VAR
   id   $VAR
done
