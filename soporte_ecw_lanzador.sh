#!/bin/sh

#  Copyright 2016 José Miguel Manzano <manzano.jm@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
# 
echo "Se va a descargar el script en la carpeta /usr/bin"
echo "**************************************************"
echo "******************¿Desea continuar?***************"
echo "[1] Sí"
echo "[2] Ver código"
echo "[0] Salir"
read opcion
if [ "$opcion" = "1" ]; then
cd /usr/bin
sudo wget https://www.dropbox.com/s/z28br61w9b3r607/soporte-ecw
sudo chmod 755 soporte-ecw
soporte-ecw
elif [ "$opcion" = "2" ]; then
firefox http://blog.jmmanzano.es/soporte-para-imagenes-mrsid-ecw-y-jp2-en-qgis-sobre-ubuntu-16-04/
fi
if [ $? -ne 0 ]; then
    echo "Clave incorrecta, saliendo del script..."
    exit 1
fi
exit 0
