for i in {1..1000}; do echo "trash file $i" > file_$i.txt; done
git add .
git commit -m "Ajout de 1000 fichiers inutiles pour tout casser 🔥"
git push origin main
