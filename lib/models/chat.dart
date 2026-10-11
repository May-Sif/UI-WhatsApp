class Chat {
  String image;
  String name;
  String messageDate;
  String mostRecentMessage;

  Chat({
    required this.image,
    required this.name,
    required this.messageDate,
    required this.mostRecentMessage,
  });
}

var chatList = [
  Chat(
    name: "Beomgyu",
    image: 'https://i.pinimg.com/736x/72/32/fa/7232fa9c787f2f6eb6cdc20bbba50c68.jpg',
    messageDate: '07/11/2023',
    mostRecentMessage: 'ayo beli ice cream'
  ),
  Chat(
    name: "Soobin",
    image: 'https://i.pinimg.com/avif/736x/ff/bf/27/ffbf27bc01dfb82c1589cfa46732c7e3.avf',
    messageDate: '07/11/2023',
    mostRecentMessage: 'May, Beomgyu di mana?'
  ),
  Chat(
    name: "Taehyun",
    image: 'https://i.pinimg.com/736x/bc/a3/08/bca3086a05f5128477aa0c87d35a3022.jpg',
    messageDate: '01/11/2023',
    mostRecentMessage: 'iya, besok aja di kelas'
  ),
];