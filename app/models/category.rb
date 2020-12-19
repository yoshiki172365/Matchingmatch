class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '恋人と/気軽に'}, {id: 2, name: '恋人と/趣味・価値観で'},
    {id: 3, name: '恋人と/将来を見据えて'}, {id: 4, name: '恋人と/その他'},
    {id: 5, name: '結婚相手と／婚活サポート受けて'}, {id: 6, name: '結婚相手と/相性を重視して'},
    {id: 7, name: '結婚相手と/もう一度'}, {id: 8, name: '結婚相手と/その他'},
    {id: 9, name: '遊び相手と/やりとりなしで'}, {id: 10, name: '遊び相手と/しかも、ハイスペ男女を'},
    {id: 11, name: '遊び相手と/楽に'}, {id: 12, name: '遊び相手と/楽に'},
    {id: 13, name: 'その他'}
  ]
end