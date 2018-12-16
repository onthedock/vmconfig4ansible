Este repositorio contiene el script que debe ejecutarse en una VM recién creada para poder ser gestionada usando Ansible.

> Más información en 

Descarga el fichero y conviértelo en ejecutable: `chmod +x vmconfig4ansible.sh`.

A continuación, después de revisar qué es lo que hace el *script*, ejecútalo mediante `./vmconfig4ansible.sh`.

El script instala Python 3 y actualiza la ubicación del intérprete de Python.

A continuación, se crea el usuario definido en `$ANSIBLE_USER` y se agrega la clave pública en el fichero `/home/$ANSIBLE_USER/.ssh/authorized_keys` para que Ansible pueda conectarse usando clave SSH a esta máquina gestionada.

Arreglamos los permisos de los ficheros y configuramos la elevación de privilegios para este usuario sin contraseña.