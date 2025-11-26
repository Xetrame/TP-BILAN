# TP-BILAN
Ce README va vous permettre d'installer docker, docker-compose, Wordpress et Zabbix sur une machine Debian 12.

---

## Prérequis :

Prérequis : Avoir git d'installer sur votre machine. Sinon :

```bash
sudo apt install git -y
```

Pour plus de simplicité, on se place en super utilisateur pour le reste du TP :

```bash
su -
```

---

## Script Docker :

On commence par copier ce dépôt github sur votre machine :

```bash
git clone https://github.com/Xetrame/TP-BILAN
```

Ensuite placer vous dans le nouveau dossier :

```bash
cd ./TP-BILAN
```

On peut maintenant lancer le script qui va permettre d'installer automatiquement docker et docker-compose :

```bash
bash install_docker.sh
```

Voici le contenue du script si vous voulez en savoir plus :

```bash
#! bin/bash
apt update && apt upgrade -y
echo "maj"
apt install docker -y
echo "install docker"
apt install docker-compose -y
echo "install docker-compose"
docker --version
docker-compose --version
```

---

## Wordpress :

Maintenant on va installer Wordpress, on se place dans le dossier wordpress :

```bash
cd ./wordpress
```

Et on lance docker-compose up :

```bash
docker-compose up -d
```

On peut se connecter à l'interface web wordpress :

```
IP-VM:80
```

Ex : 192.168.20.94:80

<img width="1387" height="959" alt="connexion wordpress" src="https://github.com/user-attachments/assets/4593fe1c-5ce2-43de-85d8-c2b9c6adea43" />

---

## Zabbix :

On passe maintenant à l'installation de Zabbix.

On se place dans le bon dossier :

```bash
cd ../
cd ./zabbix
```

Puis on exécute également le docker-compose up :

```bash
docker-compose up -d
```

On peut maintenant se connecter avec :

192.168.20.94:8081

<img width="550" height="532" alt="zabbx" src="https://github.com/user-attachments/assets/75935c62-8a2c-4750-ba05-ae5778ef2dfa" />
