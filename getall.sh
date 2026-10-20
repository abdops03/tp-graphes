#!bin/bash
tok=$(cat token.gh)
while read -r id
do
  echo "Téléchargement de l'artifact id=$id"

  curl -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $tok"\
    -H "X-GitHub-Api-Version: 2026-03-10" \
    https://api.github.com/repos/abdops03/tp-graphes/actions/artifacts/$id/zip \
    -o artifact-$id.zip

    done < liste-id.txt