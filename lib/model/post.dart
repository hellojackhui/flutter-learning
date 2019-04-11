class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;
}

final List<Post> posts = [
  Post(
    title: 'jackhui',
    author: 'jackhui111',
    description: 'adhksjgfahdgfjsdgkfjasdfhxgvkzjcxhgvjhsdgkafuetruweg ertwerusydyg gweyrt kuersuydtfauydsktf uysdgr yuerwe',
    imageUrl: 'http://pic31.nipic.com/20130720/5793914_122325176000_2.jpg'
  ),
  Post(
    title: 'car',
    author: 'jackhui111123',
    description: 'adhksjgfahdgfjsdgkfjasdfhxgvkzjcxhgvjhsdgkafuetruweg ertwerusydyg gweyrt kuersuydtfauydsktf uysdgr yuerwe',
    imageUrl: 'http://img1.xcarimg.com/exp/2872/2875/2937/20101220130509576539.jpg'
  ),
  Post(
    title: 'background',
    author: 'jackhui11112312',
    description: 'adhksjgfahdgfjsdgkfjasdfhxgvkzjcxhgvjhsdgkafuetruweg ertwerusydyg gweyrt kuersuydtfauydsktf uysdgr yuerwe',
    imageUrl: 'http://www.pptok.com/wp-content/uploads/2012/08/xunguang-4.jpg'
  )
];