body = "それも今同時に大した吟味家という事の時になさですない。\n\n" +
"いやしくも今を融通方もはなはだこのお話ですですだってに違っていませがは不足応じますだから、再びにはしたんでです。" +
"もっと岡田君へ会得文芸そう矛盾に載せず底その道徳彼らかお話がとしてご話ですですうだろて、" +
"この今は私か顔口にいうば、嘉納さんの事に魚のここを単にご指図とえが何国家からご発音が突き破っように始めてごお話しが閉じ込めですでて、" +
"どうしても単に準備を行きたてならですのに仕ですた。"

0.upto(9) do |idx|
  Article.create(
    title: "練習試合の結果#{idx}",
    body:body,
    released_at: 8.days.ago.advance(days:idx),
    expired_at: 2.days.ago.advance(days:idx),
    member_only:(idx % 3 == 0)
  )
end
0.upto(29) do |idx|
  Article.create(
    title: "Article#{idx + 10}",
    body: "blah, blah, blah...",
    released_at: 100.days.ago.advance(days: idx),
    expired_at: nil,
    member_only: false
  )
end