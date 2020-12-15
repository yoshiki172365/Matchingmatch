# 恋人を探す
lover = Category.create(name: "恋人を")
lover_1 = lover.children.create(name: "気軽に")
lover_2 = lover.children.create(name: "趣味・価値観で")
lover_3 = lover.children.create(name: "将来を見据えて")
lover_4 = lover.children.create(name: "その他")

#恋人を探す孫階層
lover_1.children.create([{name: "1"},{name: "2"},{name: "3"}])
lover_2.children.create([{name: "1"},{name: "2"},{name: "3"}])
lover_3.children.create([{name: "1"},{name: "2"},{name: "3"}])
lover_4.children.create([{name: "1"},{name: "2"},{name: "3"}])

# 結婚相手を探したい
marriage = Category.create(name: "結婚相手を")
marriage_1 = marriage.children.create(name: "婚活サポートを受けて")
marriage_2 = marriage.children.create(name: "相性を重視して")
marriage_3 = marriage.children.create(name: "もう一度")
marriage_4 = marriage.children.create(name: "その他")

# 結婚相手を探したい孫階層
marriage_1.children.create([{name: "1"},{name: "2"},{name: "3"}])
marriage_2.children.create([{name: "1"},{name: "2"},{name: "3"}])
marriage_3.children.create([{name: "1"},{name: "2"},{name: "3"}])
marriage_4.children.create([{name: "1"},{name: "2"},{name: "3"}])

# 遊び相手を探す
play = Category.create(name: "遊び相手を")
play_1 = play.children.create(name: "やりとりなしで")
play_2 = play.children.create(name: "しかも、ハイスペ男女を")
play_3 = play.children.create(name: "楽に")
play_4 = play.children.create(name: "その他")

# 遊び相手を探す孫階層
play_1.children.create([{name: "1"},{name: "2"},{name: "3"}])
play_2.children.create([{name: "1"},{name: "2"},{name: "3"}])
play_3.children.create([{name: "1"},{name: "2"},{name: "3"}])
play_4.children.create([{name: "1"},{name: "2"},{name: "3"}])
