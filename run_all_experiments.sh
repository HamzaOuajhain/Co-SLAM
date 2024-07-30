#!/bin/bash

# Path to the directory containing the configuration files
config_dir="$HOME/Desktop/Thesis/Codes/Thesis/Co-SLAM/configs/Replica/My_experiment"

# Loop through each experiment configuration file
for i in {1..6}
do
    config_file="${config_dir}/replica_room1_exp${i}.yaml"
    echo "Running experiment ${i} with configuration ${config_file}"

    # Run the Co-SLAM script with the current configuration file
    python ~/Desktop/Thesis/Codes/Thesis/Co-SLAM/coslam.py --config ${config_file}

    # Check if the previous command was successful
    if [ $? -eq 0 ]; then
        echo "Experiment ${i} completed successfully."
    else
        echo "Experiment ${i} failed."
    fi

    echo "-----------------------------------"
done

echo "All experiments completed."
