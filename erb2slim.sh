gem install haml hpricot ruby_parser slim haml2slim
for i in `find app/views/devise -name '*.erb'` ; do html2haml -e $i ${i%erb}haml ; git rm $i ; rm $i ; done
for i in `find app/views/devise -name '*.haml'` ; do haml2slim $i ${i%haml}slim ; git rm $i ; rm $i ; done
rm -Rf erb2slim