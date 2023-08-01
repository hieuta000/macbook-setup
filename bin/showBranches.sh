DA_BRANCH=$(git -C ~/work/supermojo/supermojo-dashboard-frontend rev-parse --abbrev-ref HEAD)
MA_BRANCH=$(git -C ~/work/supermojo/marketplace-showcase rev-parse --abbrev-ref HEAD)
CO_BRANCH=$(git -C ~/work/supermojo/supermojo-checkout-frontend rev-parse --abbrev-ref HEAD)
BE_BRANCH=$(git -C ~/work/supermojo/supermojo-backend rev-parse --abbrev-ref HEAD)
W6_BRANCH=$(git -C ~/work/supermojo/web6 rev-parse --abbrev-ref HEAD)

echo "BE: $BE_BRANCH"
echo "W6: $W6_BRANCH"
echo "MA: $MA_BRANCH"
echo "DA: $DA_BRANCH"
echo "CO: $CO_BRANCH"

