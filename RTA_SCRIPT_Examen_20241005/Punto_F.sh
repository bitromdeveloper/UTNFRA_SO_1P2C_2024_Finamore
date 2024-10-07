echo "Mi IP Publica es: $(curl -s ifconfig.me)" > $HOME/repogit/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> $HOME/repogit/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(echo -n "$(whoami)" | openssl dgst -sha256 | awk '{print $2}')" >> $HOME/repogit/Filtro_Avanzado.txt
cd $HOME/repogit/UTNFRA_SO_1P2C_2024_Finamore
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> $HOME/repogit/Filtro_Avanzado.txt
