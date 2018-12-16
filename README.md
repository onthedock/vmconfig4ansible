Este contiene el script que debe ejecutarse en una VM recién creada para poder ser gestionada usando Ansible.

Requerimientos:

- Python =  2.6 || 3.5+
- Ansible usa el intérprete ubicado en `/usr/bin/python`.
- se puede usar el módulo `raw` para instalar python si no se encuentra instalado en la máquina remota:
     ansible myhost --sudo -m raw -a "apt install -y python"

