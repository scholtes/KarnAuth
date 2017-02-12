# Garrett Scholtes
# Build the java classes

if [ $1 = "clean" ]; then
    rm *.class
elif [ $1 = "test" ]; then
    if [ -z "$2" ]; then
	plaintext="The quick brown fox jumps over the lazy dog";
    else
        plaintext=$2;
    fi
    gnome-terminal -x sh -c "java KarnTestServer ; bash";
    gnome-terminal -x sh -c "java KarnTestClient \"${plaintext}\"; bash";
elif [ $1 = "no-karn" ]; then
    cp franco/Karn.class .;
    javac PlantDHKey.java;
    javac DiffieHellmanExchange.java;
    javac KarnTestClient.java;
    javac KarnTestServer.java;
else 
    javac Karn.java;
    javac PlantDHKey.java;
    javac DiffieHellmanExchange.java;
    javac KarnTestClient.java;
    javac KarnTestServer.java;
fi
