assert = require 'assert'
exports.qq = (qq, unexpected...) ->
  assert not unexpected.length, "qq=#{qq}, unexpected=#{unexpected}"
  assert qq and 'length' of qq, "qq=#{qq}"
  for q, i in qq
    if not q then continue
    assert 'q' of q, "i=#{i} q=#{q}"
    q
exports.q = (q, aa...) ->
  assert q and typeof q in ['string', 'function'], "q=#{q}"
  for a, i in aa
    assert 'a' of a, "q=#{q} i=#{i} a=#{a}"
  {q, aa}
exports.a = (a, post, unexpected...) ->
  assert not unexpected.length, "a=#{a}, post=#{post}, unexpected=#{unexpected}"
  assert a and typeof a in ['string', 'function'], "a=#{a}"
  assert not post or 'function' is typeof post or 'q' of post, "a=#{a} post=#{post}"
  {a, post}
