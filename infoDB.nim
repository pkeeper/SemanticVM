echo "InfoDB Init"
import config

when config.infoDB_Backend == "Testing":
    import backends.testing
elif config.infoDB_Backend == "OrientDB":
    import backends.orientdb
else:
    echo "Unknown InfoDB Backend"
