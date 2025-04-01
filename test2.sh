# 1️⃣ Générer un énorme node_modules factice
mkdir -p node_modules && echo "faux package" > node_modules/fake.js

# 2️⃣ Générer des fichiers temporaires inutiles
touch .DS_Store Thumbs.db
echo "Swap file" > .vim.swp

# 3️⃣ Générer un fichier de logs énorme
yes "ERROR: Something went wrong!" | head -n 100000 > debug.log

# 4️⃣ Générer 1000 fichiers vides
for i in {1..1000}; do touch file_$i.txt; done

# 5️⃣ Générer des fichiers géants (10 Mo chacun)
for i in {1..10}; do head -c 10M </dev/urandom > bigfile_$i.bin; done

# 6️⃣ Générer un fichier de config perso d’éditeur
mkdir -p .vscode .idea
echo '{ "editor.fontSize": 72 }' > .vscode/settings.json

# 7️⃣ Écrire du code qui ne fonctionne pas
echo "console.log(undefinedVariable);" > app.js

# 8️⃣ Créer un fichier qui va provoquer un conflit Git
echo "Ligne 1" > conflict.txt

# 9️⃣ Tout ajouter et commiter d'un coup
git add .
git commit -m "Ajout de fichiers inutiles pour tout casser 🔥"

# 🔟 Pousser sur main sans aucune précaution
git push origin main
