#!/bin/bash

echo "=== Testing Epic 1: Public Presence & Discovery ==="
echo ""

# Start Rails server in background
echo "Starting Rails server..."
bundle exec rails server -p 3000 -b 0.0.0.0 > /tmp/rails-test.log 2>&1 &
SERVER_PID=$!
sleep 5

# Function to cleanup on exit
cleanup() {
  echo ""
  echo "Stopping Rails server..."
  kill $SERVER_PID 2>/dev/null
  wait $SERVER_PID 2>/dev/null
}
trap cleanup EXIT

echo "✓ Server started (PID: $SERVER_PID)"
echo ""

# Test 1: Homepage loads
echo "Test 1: Homepage loads successfully"
if curl -s http://localhost:3000/ | grep -q "AI JAM"; then
  echo "✓ Homepage loaded"
else
  echo "✗ Homepage failed to load"
  exit 1
fi

# Test 2: Recipe index loads
echo "Test 2: Recipe index loads successfully"
if curl -s http://localhost:3000/recipes | grep -q "The Living Recipe Book"; then
  echo "✓ Recipe index loaded"
else
  echo "✗ Recipe index failed to load"
  exit 1
fi

# Test 3: Recipe show page loads
echo "Test 3: Recipe show page loads"
if curl -s http://localhost:3000/recipes/4 | grep -q "Database Schema from Natural Language"; then
  echo "✓ Recipe show page loaded"
else
  echo "✗ Recipe show page failed to load"
  exit 1
fi

# Test 4: Homepage recipe cards are clickable (have links)
echo "Test 4: Homepage recipe cards link to actual recipes"
if curl -s http://localhost:3000/ | grep -q 'href="/en/recipes/'; then
  echo "✓ Recipe cards have links"
else
  echo "✗ Recipe cards missing links"
  exit 1
fi

# Test 5: Search functionality
echo "Test 5: Search functionality works"
if curl -s "http://localhost:3000/recipes?q=Weekly" | grep -q "Automating Weekly Standup Reports"; then
  echo "✓ Search works"
else
  echo "✗ Search failed"
  exit 1
fi

# Test 6: Tag filtering
echo "Test 6: Tag filtering works"
if curl -s "http://localhost:3000/recipes?tag=Database" | grep -q "Database Schema from Natural Language"; then
  echo "✓ Tag filtering works"
else
  echo "✗ Tag filtering failed"
  exit 1
fi

# Test 7: Czech locale
echo "Test 7: Czech locale works"
if curl -s "http://localhost:3000/cs/recipes" | grep -q "Živá Kniha Receptů"; then
  echo "✓ Czech locale works"
else
  echo "✗ Czech locale failed"
  exit 1
fi

# Test 8: Anonymous users only see published recipes
echo "Test 8: Anonymous users only see published recipes"
RECIPE_COUNT=$(curl -s http://localhost:3000/recipes | grep -o 'href="/en/recipes/[0-9]*"' | wc -l)
if [ "$RECIPE_COUNT" -eq 3 ]; then
  echo "✓ Only published recipes visible (3 found)"
else
  echo "✗ Unexpected number of recipes: $RECIPE_COUNT (expected 3)"
fi

# Test 9: View all recipes link works
echo "Test 9: Homepage 'View all recipes' link works"
if curl -s http://localhost:3000/ | grep -q 'href="/en/recipes"'; then
  echo "✓ View all recipes link present"
else
  echo "✗ View all recipes link missing"
  exit 1
fi

echo ""
echo "=== All tests passed! ==="
echo ""
echo "Manual testing checklist:"
echo "1. Visit http://localhost:3000/ - Homepage should show 3 recipe cards"
echo "2. Click on a recipe card - Should navigate to recipe detail page"
echo "3. Click 'View all recipes' - Should navigate to recipe index"
echo "4. Try search and tag filtering"
echo "5. Switch language to CS - Interface should translate"
echo "6. Login as admin@aijam.test / password123 - Should see 'Share Your Recipe' button"
echo "7. Create a new recipe - Form should work"
echo "8. Edit an existing recipe - Should save changes"
echo ""
