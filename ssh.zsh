# Add the SSH keys to the agent
for f in ~/.ssh/*
do
    if [[ ! -d "${f}" && "${f:(-4)}" != ".pub" && "${f:0:1}" != "." && "${f:(-6)}" != "config" && "${f:(-11)}" != "known_hosts" && "${f:(-15)}" != "authorized_keys" ]]; then
        ssh-add "${f}" > /dev/null 2>&1 # supressing output 
    fi
done
