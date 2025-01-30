import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameGrid extends StatelessWidget {
  final List<GameItem> games = [
    GameItem(
      title: 'Farming Simulator 25 (PC) - Steam K...',
      price: 37.18,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 | Year 1 Bundl...',
      price: 57.69,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 (PC) - Steam K...',
      price: 37.18,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 | Year 1 Bundl...',
      price: 57.69,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 (PC) - Steam K...',
      price: 37.18,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 | Year 1 Bundl...',
      price: 57.69,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ), GameItem(
      title: 'Farming Simulator 25 (PC) - Steam K...',
      price: 37.18,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),
    GameItem(
      title: 'Farming Simulator 25 | Year 1 Bundl...',
      price: 57.69,
      discount: 48,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXlt8oPyai362JnFV-_I3OE_A0bKUiQbfcw&s',
      isFavorite: false,
    ),


  ];

   GameGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5.h,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
        ),
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return GameCard(game: games[index % games.length]);
          },
          childCount: 20,
        ),
      ),
    );
  }
}

class GameCard extends StatefulWidget {
  final GameItem game;

  const GameCard({
    super.key,
    required this.game,
  });

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDark[900],
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(12.h),
            child: AspectRatio(
              aspectRatio: 12/16,
              child: Image.network(
                widget.game.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              Flexible(
                child: Text(
                  widget.game.title,
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              IconButton(
                icon: Icon(
                  widget.game.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                  size: 24.h,
                ),
                onPressed: () {
                  setState(() {
                    widget.game.isFavorite = !widget.game.isFavorite;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 4.h),

          Row(
            children: [
               Text(
                'FROM',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),

            ],
          ),
          SizedBox(height: 5.h,),

          Row(
            children: [
              Text(
                '€ ${widget.game.price.toStringAsFixed(2)}',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '-${widget.game.discount}%',
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GameItem {
  final String title;
  final double price;
  final int discount;
  final String imageUrl;
  bool isFavorite;

  GameItem({
    required this.title,
    required this.price,
    required this.discount,
    required this.imageUrl,
    this.isFavorite = false,
  });
}