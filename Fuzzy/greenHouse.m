greenhouse = readfis;
temp = input('Temperature (In the range of -10 to 50 degree celsius) = ');
humidity = input('Humidity (In the range of 0 to 100%) = ');
soilMoisture = input('Soil Moisture (In the range of 0 to 100%) = ');
light = input('Amount of light available (In the range of 0 to 15K Lux) = ');
soilph = input('Soil PH (In the range of 0 to 14) = ');
c = horzcat(temp,humidity,light,soilMoisture,soilph);
output = evalfis(c, greenhouse)';
disp(output);