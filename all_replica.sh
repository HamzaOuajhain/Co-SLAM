 #!/bin/bash

scenes=(
    "room2"
    "office0"
    "office1"
    "office2"
    "office3"
    "office4"
    "room0"
    "room1"
    "room1-small"
)

for scene in "${scenes[@]}"
do
    echo "Running CoSLAM for scene: $scene"
    python coslam.py --config "./configs/Replica/${scene}.yaml"
    echo "Finished processing $scene"
    echo "------------------------"
done

echo "All scenes processed."
