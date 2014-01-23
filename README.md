sabredavwiki
============
[Wiki is here](https://github.com/balbeko/sabredavwiki/wiki/_pages)  
You could clone it using `git clone git@github.com:balbeko/sabredavwiki.wiki.git`

Some context
============
* [initial discussion](http://evertpot.com/google-code-is-dead/#comment-1212956620)
* `svn co https://sabredav.googlecode.com/svn/wiki sabredav.wiki`
* written `conv.coffee`

```bash
  cd sabredav.wiki
  for f in *.wiki; do ../conv.coffee $f | pandoc --from html --to markdown --no-wrap | sed 's/ {.prettyprint}/php/g' > ../sabredavwiki.wiki/$f.md; done
```
