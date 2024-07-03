DA_BRANCH=$(git -C ~/work/skyfire/sky-dashboard rev-parse --abbrev-ref HEAD)
AI_BRANCH=$(git -C ~/work/skyfire/aida-ai rev-parse --abbrev-ref HEAD)
BE_BRANCH=$(git -C ~/work/skyfire/sky-services rev-parse --abbrev-ref HEAD)
W7_BRANCH=$(git -C ~/work/skyfire/web7 rev-parse --abbrev-ref HEAD)

echo "BE: $BE_BRANCH"
echo "W7: $W7_BRANCH"
echo "AI: $AI_BRANCH"
echo "DA: $DA_BRANCH"

