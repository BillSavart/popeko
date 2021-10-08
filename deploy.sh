set -e
npm run build
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/BillSavart/popeko.git master:gh-pages

cd -