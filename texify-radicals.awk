#!/opt/local/bin/gawk --lint -f
BEGIN {FS="\t"; OFS="&"}
function clink(c) {
  return "\\clnk{" c "}"
}
function clinkeach(s,    a, r, n) {
  n = split(s,a,"")
  r = ""
  for(i in a) {
    if ( a[i] == "，" || a[i] == ":") {
      r = r a[i]
    } else {
      r = r clink(a[i])
    }
  }
  return r
}
function link(s,   t) {
  t = s
  gsub("[()]", "", t)
  return "\\lnk{" t "}{" s "}"
}
function improve(s) {
  gsub("{", "{\\em ", s)
  gsub("\\[", "\\clnk{", s)
  gsub("\\]", "}", s)
  return s
}
   {
      print clinkeach($1), clinkeach($2), $3, link($4), clinkeach($5), improve($6), $7 "\\nl"
   }
