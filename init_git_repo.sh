
echo "# prod" >> README.md
git init
git add README.md
git commit -m "первый коммит"
git branch -M main
git remote add origin git@github.com:korshunovv/prod.git
git push -u origin main
