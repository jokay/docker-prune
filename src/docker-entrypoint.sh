#!/bin/sh

log () {
    printf "\n$(date -u +%Y-%m-%dT%H:%M:%S%z) | %s\n" "${1}"
}

while :
do
    for cur in ${OBJECTS}
    do
        log "Pruning ${cur} ..."
        if [ "${cur}" = "volume" ] && test "${OPTIONS#*until}" != "${OPTIONS}"
        then
            docker "${cur}" prune -f
        else
            # shellcheck disable=SC2086
            docker "${cur}" prune -f ${OPTIONS}
        fi
    done

    log "Wait ${INTERVAL}s ..."
    sleep "${INTERVAL}"
done