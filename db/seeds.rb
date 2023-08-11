questions = [
  { name: "約束された勝利の剣", ruby: "えくすかりばー" },
  { name: "全て遠き理想郷", ruby: "あゔぁろん" },
  { name: "煉天覆う七つの円卓", ruby: "ろーあいあす" },
  { name: "天地乖離す開闢の星", ruby: "えぬまえりしゅ" },
  { name: "刺し穿つ死棘の槍", ruby: "げいぼるく" },
  { name: "騎英の手綱", ruby: "べるれふぉーん" },
  { name: "破壊すべき全ての府", ruby: "るーるぶれいかー" },
  { name: "射殺す百頭", ruby: "ないんらいぶず" },
  { name: "妄想心音", ruby: "ざばーにーや" },
  { name: "無限の剣製", ruby: "あんりみてっどぶれいどわーくす" }
]

questions.each do |question|
  Question.create(question)
end
