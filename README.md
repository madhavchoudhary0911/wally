<div align="center">
<a href="#"><img src="https://user-images.githubusercontent.com/77227201/154426952-2d26691d-c203-4631-b75d-00d148cc6559.png" alt="Banner" width="30%"/></a>
</div>
<p align="center">
  <h1 align="center">Wally</h1>
</p>
<div align="center">
    <img src="https://forthebadge.com/images/badges/built-with-love.svg" />
    <img src="https://forthebadge.com/images/badges/built-for-android.svg" />
    <img src="https://forthebadge.com/images/badges/open-source.svg" />
</div>

## About The Project

Wally brings an exclusive wallpapers & setups straight to your Android device. With unlimited downloads, you can be sure to never miss the best wallpapers.

## Tech Stack

- Flutter
- Pixels API

## Getting Started

Flutter must be installed to run the project.
<br/>
- Clone the repository
 `https://github.com/shibam-naskar/wally.git`
- Cd into the project directory.
- Run `flutter pub get`
- create a pixels api key For Free <a href="https://www.pexels.com/api/" target="_blank">Create Api Key<a/>
- paste the api key inside `lib/pages/home.dart`
```javascript
void getPhotos(searchQuery) async {
    var head = {
      "Authorization":
          "YOUR PIXELS API KEY"
    };
    var response = await http.get(url, headers: head);
    var data = jsonDecode(response.body);
    print(data);
  }
```
- To run the debug apk connect a physical device or emulator and run `flutter run`.
- To build the release apk run `flutter build apk`.

## Screenshots

<img width="250" src="https://user-images.githubusercontent.com/39475600/150676431-cc8f7acb-382a-49ec-a507-6f715fee5916.jpeg"/>   <img width="250" src="https://user-images.githubusercontent.com/39475600/150676451-66a96e51-2bdb-42e4-8551-bf5113f8d9d2.jpeg"/>

## Roadmap

See the [open issues](https://github.com/shibam-naskar/wally/issues) for a list of proposed features (and known issues). Feel free to raise new issues.

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch ( `git checkout -b feature/AmazingFeature` )
3. Add your Changes ( `git add .` )
4. Commit your Changes ( `git commit -m 'Add some AmazingFeature'` )
5. Push to the Branch ( `git push origin feature/AmazingFeature` )
6. Open a Pull Request

## Contributors

<a href="https://github.com/shibam-naskar/wally/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=shibam-naskar/wally" />
</a>
