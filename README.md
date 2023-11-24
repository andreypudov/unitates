# Unit Conversion Library

You can use the unit converter to convert from one measurement to another. For example, you could convert from Celsius to Fahrenheit or cups to liters.

## Features

### Conversions you can do

- Area
- Data transfer rate
- Digital storage
- Energy
- Frequency
- Fuel consumption
- Length
- Mass
- Plane angle
- Pressure
- Speed
- Temperature
- Time
- Volume

### Units you can convert between

| Type of measurement | Available units                                                                                                                                                                                                                                                                                         |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Area                | square kilometer, square meter, square mile, square yard, square foot, square inch, hectare, acre                                                                                                                                                                                                       |
| Data transfer rate  |                                                                                                                                                                                                                                                                                                         | 
| Digital storage     |                                                                                                                                                                                                                                                                                                         | 
| Energy              |                                                                                                                                                                                                                                                                                                         | 
| Frequency           |                                                                                                                                                                                                                                                                                                         | 
| Fuel consumption    | miles per gallon, miles per gallon imperial, kilometers per liter, liters per 100 kilometers                                                                                                                                                                                                            | 
| Length              | kilometer, meter, centimeter, millimeter, micrometer, nanometer, mile, yard, foot, inch, nautical mile                                                                                                                                                                                                  | 
| Mass                | metric ton, kilogram, gram, milligram, microgram, imperial ton, US ton, stone, pound, ounce                                                                                                                                                                                                             | 
| Plane angle         | arcsecond, degree, gradian, milliradian, minute of arc, radian                                                                                                                                                                                                                                          | 
| Pressure            | bar, pascal, pound per square inch, standard atmosphere, torr                                                                                                                                                                                                                                           | 
| Speed               | mile per hour, foot per second, meter per second, kilometer per hour, knot                                                                                                                                                                                                                              | 
| Temperature         | celsius, fahrenheit, kelvin                                                                                                                                                                                                                                                                             | 
| Time                | nanosecond, microsecond, millisecond, second, minute, hour, day, week, month, year, decade, century                                                                                                                                                                                                     | 
| Volume              | US cup, US liquid gallon, US liquid quart, US liquid pint, US legal cup, US fluid ounce, US tablespoon, US teaspoon, cubic meter, liter, milliliter, imperial gallon, imperial quart, imperial pint, imperial cup, imperial fluid ounce, imperial tablespoon, imperial teaspoon, cubic foot, cubic inch | 

## Usage

```dart
const length = Length(1, LengthUnit.meter);
const lengthInFeet = length.to(LengthUnit.foot);
```
