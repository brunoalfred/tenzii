import 'package:flutter/material.dart';
import 'package:tenzii/features/lyrics/presentation/presentation.dart';
import 'package:tenzii/features/playlist/data/models/song.dart';

class SongItem extends StatelessWidget {
   const SongItem({Key? key, required this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (context) =>  LyricsScreen(song: song,),
            ),
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(
                'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/76/67/94/76679484-e249-86a5-f85d-b1fa0b6a6fbf/195375061371.png/400x400cc.jpg',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      song.title,
                      
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Tenzi za rohoni',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    // add a like icon and a dislike icon
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                ),
                child: IconButton(
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.white,
                  onPressed: () => debugPrint('Like'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
