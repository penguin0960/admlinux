find -name "*.log" | xargs --verbose tar -zcf "$(date +'%d.%m.%Y_%H-%M').tar.gz"
