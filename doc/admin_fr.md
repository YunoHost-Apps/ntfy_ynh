### Configuration

Par défaut, seul l'utilisateur sélectionné lors de l'installation peut lire et écrire dans les rubriques. Pour modifier cela, reportez-vous à la documentation du projet : https://docs.ntfy.sh/config/#access-control

Le fichier de configuration se trouve dans `__INSTALL_DIR__/server.yml` et peut être modifié directement.

Pour configurer les utilisateurs, les jetons, les acls et les niveaux, vous trouverez un petit script wrapper dans `__INSTALL_DIR__/ntfy.sh`.

``` merde
sudo ~__APP__/ntfy.sh utilisateur ajoutez votre_nouveau_nom d'utilisateur
```

par exemple, ajoutera un nouvel utilisateur.