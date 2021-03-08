planet=${1^^}

case $planet in
MERCURY | VENUS ) echo "$planet has no moons" ;;
EARTH ) echo "$planet has 1 moon" ;;
MARS ) echo "$planet has 2 moons" ;;
JUPITER ) echo "$planet has 79 moons" ;;
SATURN ) echo "$planet has 82 moons" ;;
URANUS ) echo "$planet has 27 moons" ;;
NEPTUNE ) echo "$planet has 14 moons" ;;
* ) echo "$1 not a planet :(" ;;
esac
