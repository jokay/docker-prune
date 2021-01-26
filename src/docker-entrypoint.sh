#!/bin/sh

log () {
    printf "\n$(date -u +%Y-%m-%dT%H:%M:%S%z) | %s\n" "${1}"
}

while :
do
    for cur in ${OBJECTS}
    do
        log "Pruning ${cur} ..."
        docker "${cur}" prune -f
    done

    log "Wait ${INTERVAL}s ..."
    sleep "${INTERVAL}"
done