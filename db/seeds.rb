# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%w(一族 組合 聖杯 護符 賢者 司祭 隠者 異端 監獄 奴隷 幽鬼 死神 深淵 邪眼 悪夢 黒幕 恐怖 悲惨 激怒 騒乱 殺戮 夜襲 獰猛 野蛮 悪友 暴力 絶叫 不正 爆轟 爆発 死線 暴君 勃発 叛逆 紋章 軍団 凱旋 侵略 征服 危機 悲劇
災厄 破滅 崩壊 災難 破片 壊死 混沌 終焉 起源 天罰 生贄 運命 遺言 犠牲 復活 烙印 遺書 冒涜 教義 哀歌 悪意 苦悩 狂気 絶望 不安 虚飾 憂鬱 強欲 虚弱 孤独 皮肉 共感 願望 恍惚 浄化 誠実 歓喜 不和 退屈 狡猾 暴食 堕落
 誘惑 幻滅 残像 刹那 天空 忘却 追憶 残滓 黄昏 名残 郷愁 退廃 空洞 虚空 空白 次元 距離 拡散 確率 逆説 奇数 偶数 虚数 実在 存在 不定 鼓動 才能 治療 病気 怠慢 騒動 欠陥 修復 解決 決断 覚醒 胎児 ).each do |word|
  Modifier.create(modifier_name: word)
end

