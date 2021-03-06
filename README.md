# WaterPi
A small Pi based plant watering system

https://github.com/AndyGaskell/water_pi

## To-do
- [x] Solder wires onto PiZero
- [x] Write basic script
- [x] See if it works
- [ ] Test with water for a while
- [x] Generate output
- [ ] Serve via the web
- [ ] log temperature


## Running it

It's probably best to run it as a cron job, like...

`*/5 * * * * bash /home/pi/water_pi/src/water_cycle.sh >>/home/pi/water_pi/cron.log`

Editing cron with...

`crontab -e`


## Pinouts

### Soil Sensor
![soil-sensor-pinout-diagram](https://raw.githubusercontent.com/AndyGaskell/water_pi/main/docs/soil-sensor-pinout-diagram.png)

### MotoZero
![motozero-pinout-diagram](https://raw.githubusercontent.com/AndyGaskell/water_pi/main/docs/motozero-pinout-diagram.png)

### Pi
![pi_zero_pinout](https://raw.githubusercontent.com/AndyGaskell/water_pi/main/docs/pi_zero_pinout.png)


## Links
* MotoZero pinouts https://pinout.xyz/pinout/motozero
* MotoZero https://thepihut.com/products/motozero
* Sensor https://www.az-delivery.uk/collections/sensoren/products/feuchtigkeitssensor-modul


## Git

`git clone git@github.com:AndyGaskell/water_pi.git`

`git fetch origin`

`git pull`

`git commit -a -m "blah"`

`git push`

`git push origin main`
