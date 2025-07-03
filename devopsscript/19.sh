#!/bin/bash
#!/bin/bash

n=1
while IFS= read -r line; do
  echo "$n: $line"
  ((n++))
done < "$1"


