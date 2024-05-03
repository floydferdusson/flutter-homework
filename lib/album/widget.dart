import 'package:flutter/material.dart';
import 'model.dart';
import 'repository.dart';

class AllData1 extends StatefulWidget {
  const AllData1({super.key});

  @override
  State<AllData1> createState() => _AllData1State();
}

class _AllData1State extends State<AllData1> {
  late Future<List<Album>> listAlbumsAcc;

  @override
  void initState() {
    listAlbumsAcc = listAlbums();
    super.initState();
  }

  buildAlbumList(BuildContext context, List<Album> albums) {
    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, int i) {
        return buildAlbumListItem(context, albums[i]);
      },
    );
  }

  buildAlbumListItem(BuildContext context, Album album) {
    return Card(
      child: ListTile(
        title: Text(album.title),
        subtitle: Text(album.id.toString()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetching Data from Internet'),
      ),
      body: Center(
        child: FutureBuilder<List<Album>>(
          future: listAlbumsAcc,
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text('${snapshot.error}');
            if (snapshot.hasData) {
              List<Album> fetchedData = snapshot.data!;
              return buildAlbumList(context, fetchedData);
            } else { return const CircularProgressIndicator(); }
          },
        ),
      ),
    );
  }
}
