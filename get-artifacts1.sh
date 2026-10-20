tok=$(cat token.gh)
echo "mon tok=$tok"


curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok"\
  -H "X-GitHub-Api-Version: 2026-03-10" \
  https://api.github.com/repos/abdops03/tp-graphes/actions/artifacts