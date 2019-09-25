#!/bin/sh -l

command=$1
shift
case "${command}" in
    --direct)
        ansible "$@"
        ;;
    --script)
        /bin/sh -cl "$@"
        ;;
    --shell)
        /bin/sh -l
        ;;
    *)
        echo " "
        echo "The first argument must be specified as either:"
        echo "  --direct (invoke Ansible directly with the remaining arguements passed to the container"
        echo "  --script (invoke the script specified with the remaining arguements passed to the container"
        echo "  --shell  (start the container with a shell prompt"
        echo " "
        ;;
esac

