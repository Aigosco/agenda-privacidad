# Publica estas 3 páginas en GitHub Pages (repositorio PÚBLICO Aigosco/agenda-privacidad). Uso: bash publicar.sh
cd "$(dirname "$0")"
gh repo create Aigosco/agenda-privacidad --public --description "Página pública de privacidad de Agenda Eduardo (uso personal)" --source . --remote origin --push
gh api -X POST repos/Aigosco/agenda-privacidad/pages -f "source[branch]=master" -f "source[path]=/" --jq .html_url
