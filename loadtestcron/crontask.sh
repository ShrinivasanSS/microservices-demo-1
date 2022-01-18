#!/bin/bash
curl -X HEAD -I http://web:3333/accounts/[123456002-123456020]
curl -X HEAD -I http://reg:1111/ >> /var/log/cron.log 2>&1
curl -X HEAD -I http://acc:2222/ >> /var/log/cron.log 2>&1
curl -X HEAD -I http://web:3333/accounts/123456789 >> /var/log/cron.log 2>&1
curl -X HEAD -I http://web:3333/actuator/metrics/http.server.requests
curl -X HEAD -I http://acc:2222/actuator/metrics/http.server.requests
curl -X HEAD -I http://web:3333/actuator
curl -X HEAD -I http://acc:2222/actuator
curl -X HEAD -I http://acc:2222/actuator/caches
curl -X HEAD -I http://acc:2222/actuator/info
curl -X HEAD -I http://acc:2222/actuator/env
curl -X HEAD -I http://acc:2222/actuator/threaddump
curl -X HEAD -I http://web:3333/actuator/caches
curl -X HEAD -I http://web:3333/actuator/info
curl -X HEAD -I http://web:3333/actuator/env
curl -X HEAD -I http://web:3333/actuator/threaddump
date
echo ".x."
