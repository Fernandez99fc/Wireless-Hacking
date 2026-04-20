![scan-fake-attack-wi-fi-networks-with-esp8266-based-wifi-deauther w1456](https://github.com/user-attachments/assets/4f912216-655f-472f-9146-650c624a95cd)

Steps to create a successful esp8266 deauther:-

<b> Note: These bin files were not written by me. I got them from a source I can't remember. The purpose of this, is to create a successful deauther because there are so many of them that might not work</b>

 1) erase and flash the firmware completely:

Get flasher tool here for windows or for your respective OS. <a href="https://github.com/nodemcu/nodemcu-flasher/tree/master/Win64/Release">flasher</a>

Install it.
![Screenshot (131)](https://github.com/user-attachments/assets/49d44889-78dd-45a7-9256-3c2f9b2635aa)

2) Download flasher firmware bin file
<a href="https://github.com/Fernandez99fc/Wireless/blob/main/Files/AIThinker_ESP8266_8Mbit_v1.5.4.1.bin">Aithinker.bin</a>

3) plug in your nodemcu and it should be detected, having a COM port number:
![Screenshot (132)](https://github.com/user-attachments/assets/3ec36e32-3cba-4008-84f5-274311f70662)

Next, navigate to <b>config</b> beside operation in the flasher tool and select the flashbin file you just downloaded:
![Screenshot (133)](https://github.com/user-attachments/assets/da829a92-4bf1-4ff5-a3f7-e72101a41f89)


This is going to completely erase the nodemcu firmware without having a form of access point.

<b> Note: Before you plug in the nodemcu, hold on the flash button, connect the usb to it(while holding), then start click flash in the flashertool. The board will start blinking. After a successful flash, there will be no form of access point and it will be completely empty </b>

Disconnect and reconnect.

4) Download deauther bin <a href="https://github.com/Fernandez99fc/Wireless/blob/main/Files/esp8266_deauther_2.6.1_DSTIKE_USB_DEAUTHER_V2.bin">deauther.bin</a>

Repeat the same process again. Disconnect, hold on the flash button, connect to pc, select the deauther bin file and flash(while flashing, you can let go the flash button on the board).

After a successful flash, you see wifi named <b>"pwned"</b>.
![Screenshot (128)](https://github.com/user-attachments/assets/c7c11fe1-1013-46a6-8fd1-9a67dded6001)
password is  <b> deauther</b>

You can modify some parameters in the deauther bin file such as ip address, ssid and custom information you would like to change.

ip address is 192.168.4.1. Visit in your browser

![Screenshot (129)](https://github.com/user-attachments/assets/58a58868-9990-4ece-9e50-cc7ab50a52b9)
![Screenshot (130)](https://github.com/user-attachments/assets/cadea346-f89f-4283-80ae-146dbac22804)







<b> Use responsibly and ethically </b> 

<h2> Happy hacking!</h2>





