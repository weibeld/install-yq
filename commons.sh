fail() {
  echo "::error::$1" | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/%0A/g'
  exit 1
}
