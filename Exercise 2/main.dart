Widget weatherBanner(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  return SizedBox(
    width: screenWidth - 48,
    height: 100,
    child: Row (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _weatherBox(
          screenWidth / 3 - 16,
          100,
          customChild: Icon(
            todayWeather.condition,
            size: 52,
          ),
        ),
        _weatherBox(
          screenWidth / 3 - 16,
          100,
          title: 'Bangkok',
          subtitle1: '25°C',
        ),
        _weatherBox(
          screenWidth / 3 - 16,
          100,
          title: "Sunny",
          subtitle1: "Humidity: ${todayWeather.humidity.toString()}%",
          subtitle2: "Precip: ${todayWeather.precip.toString()}%",
        ),
      ),
    ),
  );
}
