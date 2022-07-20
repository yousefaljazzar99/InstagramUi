import 'dart:math';

import 'package:first/instegram/model/posts_Response.dart';
import 'package:first/news_app/data/fake_news_responce.dart';
import 'package:first/news_app/data/new_model.dart';

List<Map<String, dynamic>> postsResponse = [
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1658242356534-9935f4e9aaed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://foras.ps/storage/photos/63862fa0-cf02-11ec-9f6a-d909ffd82898.png',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1603575448878-868a20723f5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://1.bp.blogspot.com/-NKVmmLoezOs/YCFvl7DKKMI/AAAAAAAAJkM/qQ_dcQvFdjAUF92srjg4wnONGAKDnIvbgCLcBGAsYHQ/s2048/147651358_3694485720631797_7480674734243525168_o.png',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1541178735493-479c1a27ed24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1656436753619-0463e93124b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 90
    }
  },
  {
    'user': {
      'name': 'Farah Mohammed',
      'image':
          'https://images.unsplash.com/photo-1543269865-0a740d43b90c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
    },
    'post': {
      'content': "welcome to gsk",
      'image':
          'https://images.unsplash.com/photo-1656490281849-95c30cead6d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 10
    }
  },
  {
    'user': {
      'name': 'Marah Almohandes',
      'image':
          'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798160-ec0dd13a3821?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Mohammed Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656231944351-1bdcbef1bc21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=762&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Ali Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656356594130-b17d43c221ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Naeem Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798379-c205eb1d58ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://images.unsplash.com/photo-1656354723049-13954bf3845d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://images.unsplash.com/photo-1656426741541-dd9e2da5dd0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'noLikes': 90
    }
  },
  ///////////////////////
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://images.unsplash.com/photo-1639507986194-48ef61205b61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://images.unsplash.com/photo-1656487226695-9d7c503e8b7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1656436753619-0463e93124b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 90
    }
  },
  {
    'user': {
      'name': 'Farah Mohammed',
      'image':
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'post': {
      'content': "welcome to gsk",
      'image':
          'https://images.unsplash.com/photo-1656490281849-95c30cead6d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 10
    }
  },
  {
    'user': {
      'name': 'Rashed Almohandes',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798160-ec0dd13a3821?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Mohammed Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656231944351-1bdcbef1bc21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=762&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Ali Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656356594130-b17d43c221ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Naeem Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798379-c205eb1d58ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://images.unsplash.com/photo-1656354723049-13954bf3845d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://images.unsplash.com/photo-1656426741541-dd9e2da5dd0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'noLikes': 90
    }
  },
  ///////////////////////
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://images.unsplash.com/photo-1639507986194-48ef61205b61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://images.unsplash.com/photo-1656487226695-9d7c503e8b7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1656436753619-0463e93124b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 90
    }
  },
  {
    'user': {
      'name': 'Farah Mohammed',
      'image':
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'post': {
      'content': "welcome to gsk",
      'image':
          'https://images.unsplash.com/photo-1656490281849-95c30cead6d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 10
    }
  },
  {
    'user': {
      'name': 'Rashed Almohandes',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798160-ec0dd13a3821?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Mohammed Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656231944351-1bdcbef1bc21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=762&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Ali Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656356594130-b17d43c221ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Naeem Ahmed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image':
          'https://images.unsplash.com/photo-1656421798379-c205eb1d58ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 1000
    }
  },
  {
    'user': {
      'name': 'Yousef Aljazzar ',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image':
          'https://images.unsplash.com/photo-1656354723049-13954bf3845d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'noLikes': 200
    }
  },
  {
    'user': {
      'name': 'Husam Alkahlout',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
          'https://images.unsplash.com/photo-1656426741541-dd9e2da5dd0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80',
      'noLikes': 500
    }
  },
  {
    'user': {
      'name': 'Yusef Abu Ghali',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image':
          'https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'noLikes': 90
    }
  },
  ///////////////////////
];

List<PostsResponse> posts =
    postsResponse.map((e) => PostsResponse.fromJson(e)).toList();

List<Map<String, dynamic>> articles = newsReponse['articles'];
List<NewsModel> news = articles.map((e) {
  return NewsModel.fromJson(e);
}).toList();
