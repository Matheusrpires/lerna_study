#!/bin/bash

# Check if parameter 1 contains parameter 2

package_new_version=$1
package=$2
output_file="version_output_$(date +%s%N).txt"

echo "Running custom logic for $package_new_version"
# Add your custom logic here for all packages

echo $package_new_version
echo $package

if [[ "$package_new_version" == *"$package"* ]]; then
    echo "$package_new_version" >> "$output_file"
    echo "Parameter 1 contains Parameter 2"
else
    echo "Parameter 1 does not contain Parameter 2"
fi