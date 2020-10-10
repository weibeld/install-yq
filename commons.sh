fail() {
  echo "::error::$1" | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/%0A/g'
  exit 1
}
api() {
  args=(-s -S -f)
  [[ "${{ inputs.github-token }}" ]] && args+=(-H "Authorization: Token ${{ inputs.github-token }}")
  curl "${args[@]}" "$GITHUB_API_URL$1"
}
