<p align="center">
  <h1 align="center">WALLY</h1>
</p>
<p>
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Pixels-02569B?style=for-the-badge&logo=circle&logoColor=whit"/>
</p>
Wally is a flutter app for mobile wallpapers.

<br/><br/>


## Steps to Run/Build the Project
Flutter must be installed to run the project.
<br/>
- Clone the repository
 `https://github.com/shibam-naskar/wally.git`
- Cd into the project directory.
- Run `flutter pub get`
- create a pixels api key <a href="https://www.pexels.com/api/" target="_blank">Create Api Key<a/>
- create a pixels api key for free and paste it inside `lib/pages/home.dart`
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

## Demo
<br/>
<p align="center">
 <img width="250" src="https://user-images.githubusercontent.com/39475600/150676431-cc8f7acb-382a-49ec-a507-6f715fee5916.jpeg"/>
<img width="250" src="https://user-images.githubusercontent.com/39475600/150676451-66a96e51-2bdb-42e4-8551-bf5113f8d9d2.jpeg"/>
</p>


</td>



</tr>
 </table>


