/*-------------------------------------------------------------------------*/
/*   This is a part of CLIP-UI library					   */
/*									   */
/*   Copyright (C) 2003-2005 by E/AS Software Foundation 		   */
/*   Author: Andrey Cherepanov <skull@eas.lrn.ru>			   */
/*   									   */
/*   This program is free software; you can redistribute it and/or modify  */
/*   it under the terms of the GNU General Public License as               */
/*   published by the Free Software Foundation; either version 2 of the    */
/*   License, or (at your option) any later version.                       */
/*-------------------------------------------------------------------------*/
#include "clip-ui.ch"

static driver := getDriver()

static empty_xpm := { ;
'16 16 1 1', ;
'. c None', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................', ;
'................' }

static info_xpm := {;
"32 32 639 2",;
"  	c None",;
". 	c #D9DCE1",;
"+ 	c #8E9FBA",;
"@ 	c #4D6894",;
"# 	c #28497C",;
"$ 	c #2B4C82",;
"% 	c #294A80",;
"& 	c #2F4E81",;
"* 	c #516B96",;
"= 	c #8B9CB8",;
"- 	c #DCDEE3",;
"; 	c #E6E7E9",;
"> 	c #7589A9",;
", 	c #3D5F96",;
"' 	c #3660A0",;
") 	c #6585B5",;
"! 	c #92A8CD",;
"~ 	c #A6BAD9",;
"{ 	c #B1C3DF",;
"] 	c #AEC1DF",;
"^ 	c #A1B6D7",;
"/ 	c #88A2C8",;
"( 	c #5175AD",;
"_ 	c #305A9C",;
": 	c #406196",;
"< 	c #7E90AB",;
"[ 	c #9FAEC4",;
"} 	c #2D518B",;
"| 	c #476CA6",;
"1 	c #92AED9",;
"2 	c #E2EBF9",;
"3 	c #FFFFFF",;
"4 	c #FDFEFF",;
"5 	c #CAD9F1",;
"6 	c #7D9DCE",;
"7 	c #305898",;
"8 	c #406195",;
"9 	c #C6CCD6",;
"0 	c #E5E6E8",;
"a 	c #375687",;
"b 	c #265196",;
"c 	c #A6BDE1",;
"d 	c #EFF3FB",;
"e 	c #F5F7FC",;
"f 	c #EFF2F9",;
"g 	c #EBEFF7",;
"h 	c #EAEEF7",;
"i 	c #E8EDF6",;
"j 	c #E9EEF7",;
"k 	c #F3F5FA",;
"l 	c #F6F8FC",;
"m 	c #E9F0FA",;
"n 	c #7698CF",;
"o 	c #17458F",;
"p 	c #61789C",;
"q 	c #D6D9DE",;
"r 	c #34568E",;
"s 	c #5D81BA",;
"t 	c #C4D4EC",;
"u 	c #E7EDF4",;
"v 	c #DEE5F1",;
"w 	c #DBE3F0",;
"x 	c #DAE2EF",;
"y 	c #D9E1F0",;
"z 	c #E2E9F3",;
"A 	c #E5EBF4",;
"B 	c #DDE5F1",;
"C 	c #DCE3F0",;
"D 	c #E0E6F1",;
"E 	c #E3E9F4",;
"F 	c #ABC1E3",;
"G 	c #2B59A3",;
"H 	c #4D6997",;
"I 	c #E4E5E6",;
"J 	c #5874A0",;
"K 	c #567CB7",;
"L 	c #D6E1F3",;
"M 	c #D5DDED",;
"N 	c #CCD8E9",;
"O 	c #CDD8E9",;
"P 	c #CCD7E9",;
"Q 	c #CFD9EA",;
"R 	c #E9EDF5",;
"S 	c #FEFEFF",;
"T 	c #F6F7FB",;
"U 	c #D4DDEC",;
"V 	c #CBD6E9",;
"W 	c #CED8E9",;
"X 	c #D9E1EE",;
"Y 	c #B2C7E8",;
"Z 	c #27559D",;
"` 	c #536E99",;
" .	c #3E5B8B",;
"..	c #5279B6",;
"+.	c #C5D4EC",;
"@.	c #C0CEE4",;
"#.	c #BECCE4",;
"$.	c #BBCAE3",;
"%.	c #F1F4F8",;
"&.	c #BBC9E0",;
"*.	c #BDCBE4",;
"=.	c #C9D4E8",;
"-.	c #9FB9E1",;
";.	c #23529D",;
">.	c #778AA9",;
",.	c #97A7C0",;
"'.	c #28559C",;
").	c #A5BBDF",;
"!.	c #B5C4E0",;
"~.	c #B0C1DE",;
"{.	c #B0C1DF",;
"].	c #ACBEDE",;
"^.	c #DDE5F2",;
"/.	c #FAFBFD",;
"(.	c #B1C1DB",;
"_.	c #AEC0DE",;
":.	c #B9C8E2",;
"<.	c #7F9FD2",;
"[.	c #154188",;
"}.	c #9AA7BD",;
"|.	c #5E79A5",;
"1.	c #789AD0",;
"2.	c #A9BCDC",;
"3.	c #A1B6D8",;
"4.	c #A1B7D9",;
"5.	c #A2B7D9",;
"6.	c #A2B7DA",;
"7.	c #9EB5D9",;
"8.	c #BFCEE6",;
"9.	c #FCFCFE",;
"0.	c #D8E0ED",;
"a.	c #99B0D1",;
"b.	c #A2B8DA",;
"c.	c #A1B6D9",;
"d.	c #A3B7D9",;
"e.	c #A2B7DB",;
"f.	c #4270BA",;
"g.	c #456498",;
"h.	c #7589AA",;
"i.	c #2E5A9E",;
"j.	c #99B3DA",;
"k.	c #95ACD4",;
"l.	c #94ACD4",;
"m.	c #94ADD4",;
"n.	c #94ACD5",;
"o.	c #94AED5",;
"p.	c #94AED6",;
"q.	c #8FABD5",;
"r.	c #B1C5E1",;
"s.	c #EBF0F6",;
"t.	c #F3F6F9",;
"u.	c #CCD7E8",;
"v.	c #8CA5CB",;
"w.	c #8EA9D0",;
"x.	c #95AED7",;
"y.	c #94ADD5",;
"z.	c #93ACD4",;
"A.	c #95AED5",;
"B.	c #98B0D6",;
"C.	c #9BB1D6",;
"D.	c #84A4D6",;
"E.	c #2757A0",;
"F.	c #CFD2D9",;
"G.	c #42669C",;
"H.	c #5884C3",;
"I.	c #8BA7D1",;
"J.	c #85A3CF",;
"K.	c #86A3D0",;
"L.	c #86A4D1",;
"M.	c #86A5D1",;
"N.	c #86A5D2",;
"O.	c #85A5D2",;
"P.	c #82A3D0",;
"Q.	c #89A7D3",;
"R.	c #8BA8D2",;
"S.	c #7F9FCC",;
"T.	c #81A1CE",;
"U.	c #87A6D2",;
"V.	c #86A6D2",;
"W.	c #87A5D1",;
"X.	c #8AA7D2",;
"Y.	c #8BA7D3",;
"Z.	c #82A1CF",;
"`.	c #6489C3",;
" +	c #4D77B9",;
".+	c #406DB4",;
"++	c #265DAB",;
"@+	c #677EA3",;
"#+	c #E0E1E5",;
"$+	c #3262A3",;
"%+	c #6F99D0",;
"&+	c #7999CA",;
"*+	c #789ACB",;
"=+	c #789ACC",;
"-+	c #789BCC",;
";+	c #789BCD",;
">+	c #799BCD",;
",+	c #769ACC",;
"'+	c #6D94CA",;
")+	c #7196CB",;
"!+	c #7399CC",;
"~+	c #749ACD",;
"{+	c #779BCE",;
"]+	c #7A9ED0",;
"^+	c #7C9FD0",;
"/+	c #799DCE",;
"(+	c #799CCE",;
"_+	c #7B9ECE",;
":+	c #779ACC",;
"<+	c #668EC6",;
"[+	c #517EBE",;
"}+	c #3164B1",;
"|+	c #2158AA",;
"1+	c #1E56A9",;
"2+	c #1F55A7",;
"3+	c #2761B2",;
"4+	c #26508F",;
"5+	c #9AAAC3",;
"6+	c #3368AB",;
"7+	c #6D96CD",;
"8+	c #698EC6",;
"9+	c #6A8FC7",;
"0+	c #6A90C7",;
"a+	c #6A91C9",;
"b+	c #6A92C9",;
"c+	c #6790C9",;
"d+	c #7A9ECF",;
"e+	c #B8CBE6",;
"f+	c #C0D1E9",;
"g+	c #C6D6EA",;
"h+	c #D1DEEF",;
"i+	c #DAE4F2",;
"j+	c #E6EDF7",;
"k+	c #DEE7F4",;
"l+	c #6E96CB",;
"m+	c #6A93CA",;
"n+	c #6B93CB",;
"o+	c #5A86C5",;
"p+	c #3369B6",;
"q+	c #255FB0",;
"r+	c #215CAE",;
"s+	c #235CAE",;
"t+	c #255DAE",;
"u+	c #255BAC",;
"v+	c #2763B4",;
"w+	c #2158A0",;
"x+	c #C1C7D3",;
"y+	c #627BA4",;
"z+	c #346CAF",;
"A+	c #5F8AC6",;
"B+	c #5B86C2",;
"C+	c #5B87C3",;
"D+	c #5B88C4",;
"E+	c #5C88C5",;
"F+	c #5C89C5",;
"G+	c #5C8AC6",;
"H+	c #5988C5",;
"I+	c #6C95CD",;
"J+	c #C8D8EC",;
"K+	c #F4F7FA",;
"L+	c #5E89BF",;
"M+	c #497DC0",;
"N+	c #356EBA",;
"O+	c #2764B4",;
"P+	c #2561B3",;
"Q+	c #2663B3",;
"R+	c #2762B2",;
"S+	c #2761B1",;
"T+	c #2760B0",;
"U+	c #265FAF",;
"V+	c #265DAE",;
"W+	c #2662B2",;
"X+	c #1C60AC",;
"Y+	c #B1BCCE",;
"Z+	c #4C6A9A",;
"`+	c #306DB3",;
" @	c #507FC1",;
".@	c #4D7DBF",;
"+@	c #4D7EC0",;
"@@	c #4D7FC1",;
"#@	c #4E80C2",;
"$@	c #4E81C3",;
"%@	c #4C80C3",;
"&@	c #4379C0",;
"*@	c #7BA2D2",;
"=@	c #F0F5FA",;
"-@	c #F1F5F9",;
";@	c #3E72B4",;
">@	c #2263B6",;
",@	c #2565B6",;
"'@	c #2866B7",;
")@	c #2866B6",;
"!@	c #2865B6",;
"~@	c #2864B4",;
"{@	c #2763B3",;
"]@	c #275FB0",;
"^@	c #2662B3",;
"/@	c #1A64B1",;
"(@	c #8CA0BE",;
"_@	c #466799",;
":@	c #296CB3",;
"<@	c #4174BD",;
"[@	c #4075BC",;
"}@	c #4076BE",;
"|@	c #4076BF",;
"1@	c #3F77BF",;
"2@	c #4077C0",;
"3@	c #4178C1",;
"4@	c #4179C1",;
"5@	c #417AC2",;
"6@	c #3F79C1",;
"7@	c #3270BE",;
"8@	c #BED2EB",;
"9@	c #EEF2F8",;
"0@	c #2D68B0",;
"a@	c #2567B9",;
"b@	c #296ABA",;
"c@	c #2969BA",;
"d@	c #2969B9",;
"e@	c #2868B8",;
"f@	c #2865B5",;
"g@	c #2762B3",;
"h@	c #2664B5",;
"i@	c #1766B2",;
"j@	c #8298B9",;
"k@	c #4B6C9D",;
"l@	c #1B65B0",;
"m@	c #326BB9",;
"n@	c #316CB9",;
"o@	c #316DBB",;
"p@	c #316FBB",;
"q@	c #326FBC",;
"r@	c #3270BD",;
"s@	c #3271BD",;
"t@	c #3271BE",;
"u@	c #3272BF",;
"v@	c #3172BF",;
"w@	c #296CBD",;
"x@	c #BBD0EA",;
"y@	c #EEF3F8",;
"z@	c #2F6BB2",;
"A@	c #266ABB",;
"B@	c #2A6CBD",;
"C@	c #296BBC",;
"D@	c #296ABB",;
"E@	c #296AB9",;
"F@	c #2967B8",;
"G@	c #2867B7",;
"H@	c #2764B5",;
"I@	c #2666B7",;
"J@	c #1467B3",;
"K@	c #879EBD",;
"L@	c #5D78A3",;
"M@	c #1161AC",;
"N@	c #2869B9",;
"O@	c #2968B8",;
"P@	c #2A6BBA",;
"Q@	c #2A6CBB",;
"R@	c #2A6DBC",;
"S@	c #2A6DBD",;
"T@	c #2A6EBD",;
"U@	c #2B6FBE",;
"V@	c #2A6FBE",;
"W@	c #2169BC",;
"X@	c #B9D0EA",;
"Y@	c #2F6DB4",;
"Z@	c #276DBE",;
"`@	c #2A6EBF",;
" #	c #2A6EBE",;
".#	c #2669B9",;
"+#	c #1067B1",;
"@#	c #98AAC6",;
"##	c #889AB8",;
"$#	c #0F63AB",;
"%#	c #266EBD",;
"&#	c #2B6ABA",;
"*#	c #2B6DBD",;
"=#	c #2B6EBE",;
"-#	c #2B6FBF",;
";#	c #2B70BF",;
">#	c #2B71C0",;
",#	c #2C72C1",;
"'#	c #2B72C1",;
")#	c #216BBF",;
"!#	c #B9D0EB",;
"~#	c #EFF3F8",;
"{#	c #316FB5",;
"]#	c #2870C0",;
"^#	c #2B71C2",;
"/#	c #2B71C1",;
"(#	c #2A6FC0",;
"_#	c #2A6FBF",;
":#	c #2A6BBC",;
"<#	c #2A68B9",;
"[#	c #236FBD",;
"}#	c #1362A9",;
"|#	c #AEB9CD",;
"1#	c #D6D9DF",;
"2#	c #1C67A9",;
"3#	c #2477C2",;
"4#	c #2A6CBC",;
"5#	c #2B72C0",;
"6#	c #2C72C2",;
"7#	c #2D73C3",;
"8#	c #3075C4",;
"9#	c #3175C4",;
"0#	c #2A71C2",;
"a#	c #BCD2EC",;
"b#	c #3873B7",;
"c#	c #3074C3",;
"d#	c #3176C4",;
"e#	c #2F74C4",;
"f#	c #2B70C0",;
"g#	c #2A6ABB",;
"h#	c #2273C0",;
"i#	c #1D5C9C",;
"j#	c #D5D8DF",;
"k#	c #3D71A8",;
"l#	c #247BC3",;
"m#	c #2A6DBF",;
"n#	c #2C72C3",;
"o#	c #2E74C3",;
"p#	c #3276C5",;
"q#	c #3578C6",;
"r#	c #3879C7",;
"s#	c #3A7AC7",;
"t#	c #3376C6",;
"u#	c #BFD4ED",;
"v#	c #EFF4F8",;
"w#	c #3F77B8",;
"x#	c #3979C6",;
"y#	c #3A7BC7",;
"z#	c #3076C4",;
"A#	c #2E73C3",;
"B#	c #2B72C2",;
"C#	c #2A70C1",;
"D#	c #2273BB",;
"E#	c #3B629A",;
"F#	c #E6E7E8",;
"G#	c #6780AB",;
"H#	c #1F6BB0",;
"I#	c #2D76C4",;
"J#	c #2F75C4",;
"K#	c #3779C6",;
"L#	c #3B7CC8",;
"M#	c #3E7EC9",;
"N#	c #407FCA",;
"O#	c #4180CA",;
"P#	c #3C7CC8",;
"Q#	c #C2D6EE",;
"R#	c #F0F4F9",;
"S#	c #467BBA",;
"T#	c #417FCA",;
"U#	c #4280CB",;
"V#	c #3D7EC9",;
"W#	c #397BC7",;
"X#	c #3076C5",;
"Y#	c #2D74C3",;
"Z#	c #2E7AC6",;
"`#	c #236DB1",;
" $	c #8D9EBE",;
".$	c #DEDFE2",;
"+$	c #2F63A0",;
"@$	c #3B88CD",;
"#$	c #3176C5",;
"$$	c #3679C6",;
"%$	c #3B7DC7",;
"&$	c #3F7FC8",;
"*$	c #4381CA",;
"=$	c #4683CB",;
"-$	c #4984CC",;
";$	c #4A85CC",;
">$	c #4581CB",;
",$	c #C4D7EE",;
"'$	c #F0F4F8",;
")$	c #4B7DBB",;
"!$	c #4B86CD",;
"~$	c #4884CC",;
"{$	c #4483CB",;
"]$	c #3D7DC8",;
"^$	c #3477C5",;
"/$	c #3177C5",;
"($	c #398ACD",;
"_$	c #4273AB",;
":$	c #7F96BB",;
"<$	c #3A7EBE",;
"[$	c #4286CE",;
"}$	c #4783CB",;
"|$	c #4F88CE",;
"1$	c #5289CF",;
"2$	c #4F88CF",;
"3$	c #4984CD",;
"4$	c #CBDCF1",;
"5$	c #F6F9FB",;
"6$	c #5F8CC2",;
"7$	c #4B84CC",;
"8$	c #548BD0",;
"9$	c #518ACF",;
"0$	c #4D87CE",;
"a$	c #4985CD",;
"b$	c #4581CA",;
"c$	c #3D7CC7",;
"d$	c #3577C4",;
"e$	c #3E85CB",;
"f$	c #2C69AB",;
"g$	c #B7C0D1",;
"h$	c #E2E4E7",;
"i$	c #375E9A",;
"j$	c #5090CD",;
"k$	c #4C89CF",;
"l$	c #4883CC",;
"m$	c #538BD0",;
"n$	c #558CD1",;
"o$	c #5A8FD2",;
"p$	c #77A2DA",;
"q$	c #B3CBEA",;
"r$	c #DDE7F3",;
"s$	c #89AEDE",;
"t$	c #5F92D3",;
"u$	c #578ED2",;
"v$	c #548CD1",;
"w$	c #528AD0",;
"x$	c #4A81C5",;
"y$	c #507CB2",;
"z$	c #5783B4",;
"A$	c #5583AD",;
"B$	c #52688F",;
"C$	c #D6DAE1",;
"D$	c #4471AB",;
"E$	c #6099D4",;
"F$	c #578FD2",;
"G$	c #538ACF",;
"H$	c #5D91D3",;
"I$	c #6395D5",;
"J$	c #BED2EE",;
"K$	c #E1E8F2",;
"L$	c #D8E1ED",;
"M$	c #D6E0ED",;
"N$	c #D6DFED",;
"O$	c #DDE5EF",;
"P$	c #CED9E8",;
"Q$	c #6891C6",;
"R$	c #5D90D2",;
"S$	c #588ED3",;
"T$	c #4B80C3",;
"U$	c #6091CB",;
"V$	c #537BB7",;
"W$	c #9EADC8",;
"X$	c #4872AD",;
"Y$	c #70A3DA",;
"Z$	c #6B9EDA",;
"`$	c #6092D4",;
" %	c #6596D5",;
".%	c #6B99D7",;
"+%	c #6C9AD8",;
"@%	c #6793CE",;
"#%	c #6690C9",;
"$%	c #6891CA",;
"%%	c #6891C9",;
"&%	c #658FC9",;
"*%	c #648EC8",;
"=%	c #648FC9",;
"-%	c #6897D5",;
";%	c #6496D6",;
">%	c #6093D7",;
",%	c #C9D0DD",;
"'%	c #3D65A4",;
")%	c #719DD3",;
"!%	c #88B2E6",;
"~%	c #739FDB",;
"{%	c #6E9BD8",;
"]%	c #739EDA",;
"^%	c #78A2DC",;
"/%	c #7AA4DD",;
"(%	c #7CA4DE",;
"_%	c #7CA5DF",;
":%	c #7CA5DE",;
"<%	c #7BA4DE",;
"[%	c #79A3DE",;
"}%	c #77A2DC",;
"|%	c #729FDA",;
"1%	c #6E9BD9",;
"2%	c #73A0DC",;
"3%	c #87B3E8",;
"4%	c #658EC2",;
"5%	c #D8DADE",;
"6%	c #8C9FBF",;
"7%	c #5078B6",;
"8%	c #89ACDE",;
"9%	c #9FBFEE",;
"0%	c #8EB1E6",;
"a%	c #82A9E1",;
"b%	c #81A8E0",;
"c%	c #81A7E0",;
"d%	c #82A8E0",;
"e%	c #81A7DF",;
"f%	c #80A7DF",;
"g%	c #82A8E1",;
"h%	c #90B4E7",;
"i%	c #9CBDEC",;
"j%	c #81A5DA",;
"k%	c #7187AB",;
"l%	c #90A1BC",;
"m%	c #6582B3",;
"n%	c #7A98CA",;
"o%	c #8DA9DA",;
"p%	c #99B4E4",;
"q%	c #A6BFEC",;
"r%	c #A7C1ED",;
"s%	c #A7C1EE",;
"t%	c #A6C0EE",;
"u%	c #A7C1EC",;
"v%	c #A5BEEB",;
"w%	c #97B2E3",;
"x%	c #8AA8D9",;
"y%	c #7795C8",;
"z%	c #6380B1",;
"A%	c #A6B3C9",;
"B%	c #E1E1E1",;
"C%	c #BFC6D1",;
"D%	c #7B91B9",;
"E%	c #5A79B1",;
"F%	c #5576B4",;
"G%	c #6181BD",;
"H%	c #7691C9",;
"I%	c #738FC8",;
"J%	c #5F7FBD",;
"K%	c #5E7DB7",;
"L%	c #6683B6",;
"M%	c #879BBE",;
"N%	c #C2C8D2",;
"O%	c #E5E4E4",;
"P%	c #E2E2E2",;
"Q%	c #B8C1D1",;
"R%	c #B3BDCF",;
"S%	c #B4BECF",;
"T%	c #BAC3D2",;
"U%	c #D0D4DB",;
"V%	c #E1E2E3",;
"                      . + @ # $ % & * = -                       ",;
"                ; > , ' ) ! ~ { ] ^ / ( _ : <                   ",;
"              [ } | 1 2 3 3 3 3 3 3 3 4 5 6 7 8 9               ",;
"          0 a b c d e f g h i i j h h g k l m n o p             ",;
"        q r s t u v w w x y z A B x C w w C D E F G H I         ",;
"      0 J K L M N O O P Q R S 3 T U V O O O O W X Y Z `         ",;
"       ...+.@.#.#.#.#.$.C 3 3 3 3 %.&.*.#.#.#.#.#.=.-.;.>.      ",;
"    ,.'.).!.~.~.{.{.{.].^.3 3 3 3 /.(._.{.{.{.{.~.~.:.<.[.}.    ",;
"  I |.1.2.3.4.5.5.6.6.7.8.9.3 3 3 0.a.b.b.6.6.5.5.c.d.e.f.g.    ",;
"  h.i.j.k.l.m.n.o.o.p.p.q.r.s.t.u.v.w.x.p.o.o.y.z.A.B.C.D.E.F.  ",;
"  G.H.I.J.K.K.L.M.M.M.N.O.P.Q.R.S.T.U.V.N.M.W.X.Y.Z.`. +.+++@+  ",;
"#+$+%+&+*+=+=+-+;+>+,+'+)+!+~+{+]+^+/+(+(+_+:+<+[+}+|+1+2+3+4+  ",;
"5+6+7+8+9+0+a+a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r+s+t+t+u+v+w+x+",;
"y+z+A+B+C+D+E+F+G+H+I+J+/.3 3 3 3 K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+",;
"Z+`+ @.@+@@@@@#@$@$@%@&@*@=@3 3 3 -@;@>@,@'@)@!@~@v+{@3+]@^@/@(@",;
"_@:@<@[@}@|@1@2@3@4@5@6@7@8@3 3 3 9@0@a@b@c@d@e@'@)@f@v+g@h@i@j@",;
"k@l@m@n@o@p@q@r@s@t@u@v@w@x@3 3 3 y@z@A@B@C@D@E@d@F@G@)@H@I@J@K@",;
"L@M@N@O@d@P@Q@R@S@T@U@V@W@X@3 3 3 y@Y@Z@`@ #S@B@C@D@c@O@'@.#+#@#",;
"##$#%#&#Q@*#=#-#;#>#,#'#)#!#3 3 3 ~#{#]#^#/#(#_# #S@:#b@<#[#}#|#",;
"1#2#3#4# #;#>#5#6#7#8#9#0#a#3 3 3 ~#b#c#d#e#7#/#f#_# #S@g#h#i#j#",;
"  k#l#m#_#'#n#o#p#q#r#s#t#u#3 3 3 v#w#x#y#r#q#z#A#B#C#_#m#D#E#F#",;
"  G#H#I#B#J#p#K#L#M#N#O#P#Q#3 3 3 R#S#T#U#T#V#W#q#X#Y#C#Z#`# $  ",;
"  .$+$@$#$$$%$&$*$=$-$;$>$,$3 3 3 '$)$;$!$~${$O#]$W#^$/$($_$F#  ",;
"    :$<$[$P#*$}$!$|$1$2$3$4$3 3 3 5$6$7$8$9$0$a$b$c$d$e$f$g$    ",;
"    h$i$j$k$l$|$m$n$o$p$q$4 3 3 3 3 r$s$t$u$v$w$x$y$z$A$B$      ",;
"      C$D$E$F$G$o$H$I$J$K$L$M$M$M$N$O$P$Q$R$H$S$T$U$U$V$        ",;
"        W$X$Y$Z$`$ %.%+%@%#%$%$%%%#%&%*%=%-%;%>%U$U$V$          ",;
"          ,%'%)%!%~%{%]%^%/%(%_%:%<%[%}%|%1%2%3%4%V$            ",;
"            5%6%7%8%9%0%a%b%c%d%d%e%f%g%h%i%j%V$k%              ",;
"                l%m%n%o%p%q%r%s%t%u%v%w%x%y%z%A%                ",;
"                  B%C%D%E%F%G%H%I%J%K%L%M%N%O%                  ",;
"                        P%9 Q%R%S%T%U%V%                        "}

static error_xpm := {;
"32 32 242 2",;
"  	c None",;
". 	c #DC9D9D",;
"+ 	c #D57272",;
"@ 	c #CD3939",;
"# 	c #C92B2B",;
"$ 	c #C20000",;
"% 	c #C00000",;
"& 	c #C62B2B",;
"* 	c #C73939",;
"= 	c #D07272",;
"- 	c #D89D9D",;
"; 	c #E4D7D7",;
"> 	c #D77272",;
", 	c #CB1C1C",;
"' 	c #C60000",;
") 	c #C50000",;
"! 	c #CE0000",;
"~ 	c #CD0000",;
"{ 	c #CC0000",;
"] 	c #CB0000",;
"^ 	c #BF0000",;
"/ 	c #BA0000",;
"( 	c #B80000",;
"_ 	c #BC1C1C",;
": 	c #CD7272",;
"< 	c #E2D7D7",;
"[ 	c #DD9D9D",;
"} 	c #CB0E0E",;
"| 	c #C80000",;
"1 	c #DC0000",;
"2 	c #EB1F1F",;
"3 	c #F75C5C",;
"4 	c #F97B7B",;
"5 	c #F86B6B",;
"6 	c #EA2E2E",;
"7 	c #D50000",;
"8 	c #BD0000",;
"9 	c #B40000",;
"0 	c #B50E0E",;
"a 	c #D59D9D",;
"b 	c #D66565",;
"c 	c #CA0000",;
"d 	c #DF0000",;
"e 	c #F75656",;
"f 	c #FCAFAF",;
"g 	c #FFEBEB",;
"h 	c #FDCDCD",;
"i 	c #F97474",;
"j 	c #D70E0E",;
"k 	c #B50000",;
"l 	c #AF0000",;
"m 	c #C66565",;
"n 	c #D55656",;
"o 	c #D00000",;
"p 	c #EF2828",;
"q 	c #FCA4A4",;
"r 	c #FFDCDC",;
"s 	c #FECDCD",;
"t 	c #EE4343",;
"u 	c #AC0000",;
"v 	c #C05656",;
"w 	c #D80000",;
"x 	c #F33E3E",;
"y 	c #FEBFBF",;
"z 	c #FFCCCC",;
"A 	c #F57171",;
"B 	c #A90000",;
"C 	c #C26565",;
"D 	c #F33A3A",;
"E 	c #FFBCBC",;
"F 	c #FFCACA",;
"G 	c #F67474",;
"H 	c #A60000",;
"I 	c #D19D9D",;
"J 	c #CA0E0E",;
"K 	c #EE1515",;
"L 	c #FEA0A0",;
"M 	c #FFABAB",;
"N 	c #FFFFFF",;
"O 	c #FFE1E1",;
"P 	c #ED3F3F",;
"Q 	c #A70E0E",;
"R 	c #E1D7D7",;
"S 	c #FC7373",;
"T 	c #FF9A9A",;
"U 	c #FFC1C1",;
"V 	c #FFDBDB",;
"W 	c #FE9090",;
"X 	c #D00909",;
"Y 	c #A10000",;
"Z 	c #C27272",;
"` 	c #F52222",;
" .	c #FF8A8A",;
"..	c #FFA0A0",;
"+.	c #FFD4D4",;
"@.	c #FA5555",;
"#.	c #AA0000",;
"$.	c #A71C1C",;
"%.	c #DE0000",;
"&.	c #FB5353",;
"*.	c #FF7979",;
"=.	c #FFCECE",;
"-.	c #FE7272",;
";.	c #FB5555",;
">.	c #F72F2F",;
",.	c #F41818",;
"'.	c #9C0000",;
").	c #CE9D9D",;
"!.	c #EA0606",;
"~.	c #FF6767",;
"{.	c #FFC5C5",;
"].	c #FFC7C7",;
"^.	c #FCACAC",;
"/.	c #F72929",;
"(.	c #F20000",;
"_.	c #E20000",;
":.	c #9B0000",;
"<.	c #BF7272",;
"[.	c #CC3939",;
"}.	c #F51616",;
"|.	c #FF5656",;
"1.	c #FFBEBE",;
"2.	c #FA9F9F",;
"3.	c #9F0000",;
"4.	c #AB3939",;
"5.	c #F92222",;
"6.	c #FF4545",;
"7.	c #FFB8B8",;
"8.	c #AE0000",;
"9.	c #A52B2B",;
"0.	c #C10000",;
"a.	c #F91A1A",;
"b.	c #FF3333",;
"c.	c #FFB1B1",;
"d.	c #AD0000",;
"e.	c #940000",;
"f.	c #F91111",;
"g.	c #FF2222",;
"h.	c #FFADAD",;
"i.	c #920000",;
"j.	c #C52B2B",;
"k.	c #F90808",;
"l.	c #FF1010",;
"m.	c #FFA7A7",;
"n.	c #F40000",;
"o.	c #AB0000",;
"p.	c #A12B2B",;
"q.	c #C63939",;
"r.	c #F90101",;
"s.	c #FF0202",;
"t.	c #FC9F9F",;
"u.	c #F70000",;
"v.	c #970000",;
"w.	c #A53939",;
"x.	c #B90000",;
"y.	c #EE0000",;
"z.	c #FD0101",;
"A.	c #FD9F9F",;
"B.	c #FA0000",;
"C.	c #E60000",;
"D.	c #8F0000",;
"E.	c #B97272",;
"F.	c #D79D9D",;
"G.	c #DA0000",;
"H.	c #FE0000",;
"I.	c #FE9F9F",;
"J.	c #FF9F9F",;
"K.	c #8E0000",;
"L.	c #CA9D9D",;
"M.	c #BE0000",;
"N.	c #FF0707",;
"O.	c #FF3535",;
"P.	c #FFA3A3",;
"Q.	c #971C1C",;
"R.	c #CC7272",;
"S.	c #B30000",;
"T.	c #DD0909",;
"U.	c #FF1212",;
"V.	c #FF6C6C",;
"W.	c #CD0909",;
"X.	c #8C0000",;
"Y.	c #B87272",;
"Z.	c #B40E0E",;
"`.	c #B50202",;
" +	c #F51919",;
".+	c #FF1D1D",;
"++	c #FF7272",;
"@+	c #F11919",;
"#+	c #930202",;
"$+	c #8F0E0E",;
"%+	c #E0D7D7",;
"&+	c #BC0707",;
"*+	c #FA2626",;
"=+	c #FF2828",;
"-+	c #FF5151",;
";+	c #F82626",;
">+	c #A10707",;
",+	c #8A0000",;
"'+	c #C99D9D",;
")+	c #C56565",;
"!+	c #CA1212",;
"~+	c #FA3030",;
"{+	c #FF3434",;
"]+	c #F83030",;
"^+	c #B71212",;
"/+	c #B16565",;
"(+	c #BF5656",;
"_+	c #A80000",;
":+	c #B70B0B",;
"<+	c #F43636",;
"[+	c #FF3F3F",;
"}+	c #F13636",;
"|+	c #A10B0B",;
"1+	c #AC5656",;
"2+	c #A50000",;
"3+	c #A90404",;
"4+	c #D62929",;
"5+	c #FF4A4A",;
"6+	c #CD2929",;
"7+	c #930404",;
"8+	c #D09D9D",;
"9+	c #A50E0E",;
"0+	c #A00000",;
"a+	c #AA0A0A",;
"b+	c #CE2929",;
"c+	c #EC4545",;
"d+	c #EA4545",;
"e+	c #C72929",;
"f+	c #9C0A0A",;
"g+	c #A61C1C",;
"h+	c #9A0000",;
"i+	c #9F0606",;
"j+	c #B11717",;
"k+	c #AF1717",;
"l+	c #AE1717",;
"m+	c #AD1717",;
"n+	c #970606",;
"o+	c #B77272",;
"p+	c #D2ACAC",;
"q+	c #AA3939",;
"r+	c #A42B2B",;
"s+	c #A43939",;
"                                                                ",;
"                      . + @ # $ % & * = -                       ",;
"                ; > , ' ) ' ! ~ { ] ^ / ( _ : <                 ",;
"              [ } | { 1 2 3 4 4 4 4 5 6 7 8 9 0 a               ",;
"            b c ] d e f g g g g g g g g h i j k l m             ",;
"          n c o p q r r r r r r r r r r r r s t / u v           ",;
"        b c w x y z z z z z z z z z z z z z z z A ) B C         ",;
"      [ c o D E E E F E E E E E E E E E E F E E E G k H I       ",;
"    ; J ] K L M M z N O M M M M M M M M O N z M M M P B Q R     ",;
"    > | d S T T U N N N V T T T T T T V N N N U T T W X Y Z     ",;
"    , { `  . ...N N N N N +. . . . .+.N N N N N .. . .@.#.$.    ",;
"  . ' %.&.*.*.*.z N N N N N =.*.*.=.N N N N N z -.;.>.,.| '.).  ",;
"  + ) !.~.~.~.~.~.{.N N N N N ].].N N N N N ^./.(.(.(.(._.:.<.  ",;
"  [.' }.|.|.|.|.|.|.1.N N N N N N N N N N 2.(.(.(.(.(.(.(.3.4.  ",;
"  # ! 5.6.6.6.6.6.6.6.7.N N N N N N N N 2.(.(.(.(.(.(.(.(.8.9.  ",;
"  0.{ a.b.b.b.b.b.b.b.b.c.N N N N N N 2.(.(.(.(.(.(.(.(.(.d.e.  ",;
"  % ] f.g.g.g.g.g.g.g.g.h.N N N N N N 2.(.(.(.(.(.(.(.(.(.u i.  ",;
"  j.c k.l.l.l.l.l.l.l.m.N N N N N N N N 2.n.n.n.n.n.n.n.n.o.p.  ",;
"  q.^ r.s.s.s.s.s.s...N N N N N N N N N N t.u.u.u.u.u.u.u.v.w.  ",;
"  = x.y.z.z.z.z.z.L N N N N N A.A.N N N N N A.B.B.B.B.B.C.D.E.  ",;
"  F.( G.H.H.H.H.I.N N N N N J.H.H.J.N N N N N I.H.H.H.H.' K.L.  ",;
"    _ M.N.N.N.O.N N N N N P.N.N.N.N.P.N N N N N O.N.N.N.'.Q.    ",;
"    R.S.T.U.U.U.V.N N N m.U.U.U.U.U.U.m.N N N V.U.U.U.W.X.Y.    ",;
"    < Z.`. +.+.+.+++N M .+.+.+.+.+.+.+.+M N ++.+.+.+@+#+$+%+    ",;
"      a 8.&+*+=+=+=+-+=+=+=+=+=+=+=+=+=+=+-+=+=+=+;+>+,+'+      ",;
"        )+o.!+~+{+{+{+{+{+{+{+{+{+{+{+{+{+{+{+{+]+^+,+/+        ",;
"          (+_+:+<+[+[+[+[+[+[+[+[+[+[+[+[+[+[+}+|+,+1+          ",;
"            C 2+3+4+5+5+5+5+5+5+5+5+5+5+5+5+6+7+,+/+            ",;
"              8+9+0+a+b+c+|.|.|.|.|.|.d+e+f+X.$+'+              ",;
"                R Z g+:.h+i+j+k+l+m+n+D.K.Q.o+%+                ",;
"                      p+<.q+r+e.i.p.s+E.L.                      ",;
"                                                                "}

static warning_xpm := {;
"32 32 333 2",;
"  	c None",;
". 	c #E2D2C8",;
"+ 	c #E1D1C7",;
"@ 	c #DA9871",;
"# 	c #D24E00",;
"$ 	c #D4926B",;
"% 	c #DDDDDD",;
"& 	c #E37B00",;
"* 	c #CCBCB2",;
"= 	c #D67338",;
"- 	c #D55600",;
"; 	c #FCBF00",;
"> 	c #CC692E",;
", 	c #D2D2D2",;
"' 	c #DFB59C",;
") 	c #EE9A00",;
"! 	c #FFC700",;
"~ 	c #C89E86",;
"{ 	c #DADADA",;
"] 	c #D3601B",;
"^ 	c #DA6500",;
"/ 	c #FFD32E",;
"( 	c #FFFDCB",;
"_ 	c #CD5B16",;
": 	c #CDCDCD",;
"< 	c #F4AA02",;
"[ 	c #FFF3AB",;
"} 	c #FFFFE1",;
"| 	c #C8865F",;
"1 	c #D7D7D7",;
"2 	c #D2560D",;
"3 	c #E37C00",;
"4 	c #FFDE58",;
"5 	c #FFFFE0",;
"6 	c #FFFFDF",;
"7 	c #FFDE56",;
"8 	c #D1540B",;
"9 	c #CBBAB0",;
"0 	c #D88655",;
"a 	c #F9BF0D",;
"b 	c #FFF9C3",;
"c 	c #C6C6B8",;
"d 	c #969696",;
"e 	c #FFF8C1",;
"f 	c #C97747",;
"g 	c #D3D3D3",;
"h 	c #E0BFAB",;
"i 	c #E99002",;
"j 	c #FFEA7C",;
"k 	c #EDEDD4",;
"l 	c #979797",;
"m 	c #989898",;
"n 	c #949494",;
"o 	c #D9D9C6",;
"p 	c #FFEA7A",;
"q 	c #E98F01",;
"r 	c #C8A793",;
"s 	c #DCDCDC",;
"t 	c #D46A2A",;
"u 	c #D85F00",;
"v 	c #FFDA26",;
"w 	c #FFFCCD",;
"x 	c #E5E5C8",;
"y 	c #C9C9B6",;
"z 	c #FFFCCB",;
"A 	c #FFD924",;
"B 	c #CD6223",;
"C 	c #CFCFCF",;
"D 	c #DDAB8E",;
"E 	c #F1AB01",;
"F 	c #FFF292",;
"G 	c #FFFFD3",;
"H 	c #EBEBC7",;
"I 	c #959595",;
"J 	c #929292",;
"K 	c #DCDCBC",;
"L 	c #FFFFD1",;
"M 	c #FFF28C",;
"N 	c #C79678",;
"O 	c #D9D9D9",;
"P 	c #E4DCD7",;
"Q 	c #D3570E",;
"R 	c #DD7100",;
"S 	c #FFE43F",;
"T 	c #FFFEC5",;
"U 	c #FFFFCB",;
"V 	c #FFFFCC",;
"W 	c #989894",;
"X 	c #919191",;
"Y 	c #909090",;
"Z 	c #8E8E8E",;
"` 	c #F8F8C6",;
" .	c #FFFFC7",;
"..	c #FFFEBF",;
"+.	c #FFE236",;
"@.	c #CCC4BF",;
"#.	c #DFDFDF",;
"$.	c #D98F64",;
"%.	c #F9CC0A",;
"&.	c #FFF99D",;
"*.	c #FFFFC4",;
"=.	c #FFFFC3",;
"-.	c #B7B7A1",;
";.	c #8B8B8B",;
">.	c #8A8A8A",;
",.	c #9E9E93",;
"'.	c #FFFFC1",;
").	c #FFFFBE",;
"!.	c #FFFFBC",;
"~.	c #FFF892",;
"{.	c #F9CB06",;
"].	c #C87F52",;
"^.	c #D5D5D5",;
"/.	c #E68D00",;
"(.	c #FFEC51",;
"_.	c #FFFFBA",;
":.	c #FFFFB9",;
"<.	c #FFFFBB",;
"[.	c #D1D1A6",;
"}.	c #838383",;
"|.	c #B8B898",;
"1.	c #FFFFB6",;
"2.	c #FFFFB3",;
"3.	c #FFFFAF",;
"4.	c #FFFFAB",;
"5.	c #FFEA43",;
"6.	c #C8B7AE",;
"7.	c #D55700",;
"8.	c #FCDB13",;
"9.	c #FFFB97",;
"0.	c #FFFFAE",;
"a.	c #EEEEA8",;
"b.	c #7A7A7A",;
"c.	c #797979",;
"d.	c #DCDC9E",;
"e.	c #FFFFA9",;
"f.	c #FFFFA5",;
"g.	c #FFFFA1",;
"h.	c #FFFF9E",;
"i.	c #FFFB82",;
"j.	c #FCDA0C",;
"k.	c #EEAC00",;
"l.	c #FFF356",;
"m.	c #FFFFA4",;
"n.	c #FFFFA2",;
"o.	c #FFFFA3",;
"p.	c #8B8B79",;
"q.	c #6E6E6E",;
"r.	c #FFFF9D",;
"s.	c #FFFF9B",;
"t.	c #FFFF98",;
"u.	c #FFFF93",;
"v.	c #FFFF8D",;
"w.	c #FFFF8B",;
"x.	c #FFF243",;
"y.	c #DA6B00",;
"z.	c #FFEB18",;
"A.	c #FFFE8A",;
"B.	c #FFFF92",;
"C.	c #FFFF94",;
"D.	c #A7A776",;
"E.	c #88886C",;
"F.	c #FFFF8A",;
"G.	c #FFFF87",;
"H.	c #FFFF82",;
"I.	c #FFFF7C",;
"J.	c #FFFF78",;
"K.	c #FFFD6D",;
"L.	c #FFEA0E",;
"M.	c #F4C400",;
"N.	c #FFF854",;
"O.	c #FFFF81",;
"P.	c #FFFF80",;
"Q.	c #F4F47C",;
"R.	c #E9E978",;
"S.	c #FFFF7A",;
"T.	c #FFFF77",;
"U.	c #FFFF73",;
"V.	c #FFFF6F",;
"W.	c #FFFF6B",;
"X.	c #FFFF65",;
"Y.	c #FFFF62",;
"Z.	c #FFF73A",;
"`.	c #E38A00",;
" +	c #FFF21E",;
".+	c #FFFF69",;
"++	c #FFFF6E",;
"@+	c #FFFF6C",;
"#+	c #FFFF66",;
"$+	c #FFFF5F",;
"%+	c #FFFF5C",;
"&+	c #FFFF57",;
"*+	c #FFFF53",;
"=+	c #FFFF4D",;
"-+	c #FFFF4A",;
";+	c #FFF111",;
">+	c #CAC2BD",;
",+	c #DEDEDE",;
"'+	c #D55800",;
")+	c #F9DD01",;
"!+	c #FFFC43",;
"~+	c #FFFF58",;
"{+	c #FFFF5B",;
"]+	c #B5B54D",;
"^+	c #46463C",;
"/+	c #373737",;
"(+	c #9A9A44",;
"_+	c #FFFF50",;
":+	c #FFFF4C",;
"<+	c #FFFF49",;
"[+	c #FFFF45",;
"}+	c #FFFF40",;
"|+	c #FFFF3D",;
"1+	c #FFFF3A",;
"2+	c #FFFB29",;
"3+	c #F9DD00",;
"4+	c #D4D4D4",;
"5+	c #E9A100",;
"6+	c #FFF819",;
"7+	c #FFFF41",;
"8+	c #FFFF43",;
"9+	c #FFFF48",;
"0+	c #FFFF47",;
"a+	c #FFFF46",;
"b+	c #3C3C31",;
"c+	c #2E2E2E",;
"d+	c #2C2C2C",;
"e+	c #292929",;
"f+	c #E4E43A",;
"g+	c #FFFF39",;
"h+	c #FFFF37",;
"i+	c #FFFF33",;
"j+	c #FFFF30",;
"k+	c #FFFF2C",;
"l+	c #FFFF29",;
"m+	c #FFFF27",;
"n+	c #FFF70D",;
"o+	c #C9A894",;
"p+	c #D86300",;
"q+	c #FCED05",;
"r+	c #FFFE25",;
"s+	c #FFFF2D",;
"t+	c #FFFF32",;
"u+	c #FFFF31",;
"v+	c #323225",;
"w+	c #232323",;
"x+	c #202020",;
"y+	c #1E1E1E",;
"z+	c #E3E326",;
"A+	c #FFFF25",;
"B+	c #FFFF22",;
"C+	c #FFFF20",;
"D+	c #FFFF1E",;
"E+	c #FFFF1B",;
"F+	c #FFFF19",;
"G+	c #FFFF17",;
"H+	c #FFFE13",;
"I+	c #FCED02",;
"J+	c #CB682E",;
"K+	c #D0D0D0",;
"L+	c #F1C500",;
"M+	c #FFFB0E",;
"N+	c #FFFF1A",;
"O+	c #FFFF1D",;
"P+	c #FFFF1F",;
"Q+	c #A9A91C",;
"R+	c #191919",;
"S+	c #181818",;
"T+	c #6E6E16",;
"U+	c #FFFF14",;
"V+	c #FFFF13",;
"W+	c #FFFF11",;
"X+	c #FFFF0F",;
"Y+	c #FFFF0D",;
"Z+	c #FFFF0B",;
"`+	c #FFFF0A",;
" @	c #FFFF08",;
".@	c #FFFB04",;
"+@	c #C89679",;
"@@	c #DD7A00",;
"#@	c #FFFE00",;
"$@	c #FFFE0F",;
"%@	c #FFFF15",;
"&@	c #FFFF16",;
"*@	c #FFFF12",;
"=@	c #FFFF10",;
"-@	c #FFFF0E",;
";@	c #FFFF0C",;
">@	c #FFFF09",;
",@	c #FFFF07",;
"'@	c #FFFF06",;
")@	c #FFFF05",;
"!@	c #FFFE02",;
"~@	c #CCCCCC",;
"{@	c #E08500",;
"]@	c #F4D300",;
"^@	c #F5D50C",;
"/@	c #F5D50D",;
"(@	c #F5D50E",;
"_@	c #F5D60F",;
":@	c #F5D610",;
"<@	c #F4D50B",;
"[@	c #F4D509",;
"}@	c #F4D408",;
"|@	c #F4D407",;
"1@	c #F4D406",;
"2@	c #F4D405",;
"3@	c #F4D404",;
"4@	c #F4D403",;
"5@	c #F4D302",;
"6@	c #F4D301",;
"7@	c #C1C1C1",;
"8@	c #DBDBDB",;
"9@	c #D58B5F",;
"0@	c #D35104",;
"a@	c #D35307",;
"b@	c #D35408",;
"c@	c #D45409",;
"d@	c #D4550A",;
"e@	c #D35206",;
"f@	c #D35105",;
"g@	c #D35003",;
"h@	c #D24F02",;
"i@	c #D24F01",;
"j@	c #C2784C",;
"k@	c #BFBFBF",;
"l@	c #C2A18D",;
"m@	c #BE9D8A",;
"n@	c #BD9C89",;
"o@	c #BAAAA0",;
"p@	c #BCBCBC",;
"q@	c #CBCBCB",;
"r@	c #D1D1D1",;
"                                                                ",;
"                            . +                                 ",;
"                          @ # # $ %                             ",;
"                        . # & & # * %                           ",;
"                        = - ; ; - > ,                           ",;
"                      ' # ) ! ! ) # ~ {                         ",;
"                      ] ^ / ( ( / ^ _ :                         ",;
"                    @ # < [ } } [ < # | 1                       ",;
"                  . 2 3 4 5 6 6 6 7 3 8 9 %                     ",;
"                  0 - a b c d d c e a - f g                     ",;
"                h # i j k d l m n o p q # r s                   ",;
"                t u v w x d d d n y z A u B C                   ",;
"              D # E F G H I I n J K L M E # N O                 ",;
"            P Q R S T U V W X Y Z `  ...+.R 8 @.#.              ",;
"            $.# %.&.*.=.*.-.;.>.,.'.).!.~.{.# ].^.              ",;
"          . # /.(._.:._.<.[.}.}.|.1.2.3.4.5./.# 6.s             ",;
"          = 7.8.9.3.0.3.3.a.b.c.d.e.f.g.h.i.j.7.> ,             ",;
"        ' # k.l.m.g.g.n.o.g.p.q.r.s.t.u.v.w.x.k.# ~ {           ",;
"        ] y.z.A.B.B.C.C.C.B.D.E.v.F.G.H.I.J.K.L.y._ :           ",;
"      @ # M.N.O.P.O.H.H.O.O.Q.R.S.T.U.V.W.X.Y.Z.M.# | 1         ",;
"    P 2 `. +.+W.++++V.++++@+W..+#+Y.$+%+&+*+=+-+;+`.8 >+,+      ",;
"    0 '+)+!+&+~+{+%+%+{+{+]+^+/+(+_+:+<+[+}+|+1+2+3+'+f 4+      ",;
"  h # 5+6+7+8+[+9+9+9+0+a+b+c+d+e+f+g+h+i+j+k+l+m+n+5+# o+s     ",;
"  = p+q+r+s+j+t+t+t+t+t+u+v+w+x+y+z+A+B+C+D+E+F+G+H+I+p+J+K+    ",;
"D # L+M+N+E+O+P+P+C+C+P+P+Q+R+S+T+G+U+V+W+X+Y+Z+`+ @.@L+# +@O   ",;
"] @@#@$@V+U+%@&@G+&@G+%@%@U+V+*@=@X+-@;@;@>@ @,@'@)@!@#@@@_ ~@  ",;
"# {@]@^@/@(@_@_@:@:@:@_@_@(@/@/@<@[@[@}@|@1@2@3@4@5@6@]@{@# 7@8@",;
"9@# # 0@a@b@b@c@d@d@c@c@c@b@b@a@e@f@e@f@0@0@g@h@i@i@i@# # j@k@O ",;
"  * l@m@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@n@o@p@q@  ",;
"    ^.r@K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+K+r@^.    ",;
"                                                                ",;
"                                                                "}

static question_xpm := {;
"32 32 223 2",;
"  	c None",;
". 	c #D0D8E9",;
"+ 	c #BACAEC",;
"@ 	c #8EAFF2",;
"# 	c #8DAEF2",;
"$ 	c #B9C9EC",;
"% 	c #CFD7E9",;
"& 	c #DBDFE7",;
"* 	c #9AB7F0",;
"= 	c #5B8FFA",;
"- 	c #397AFF",;
"; 	c #3879FF",;
"> 	c #3678FF",;
", 	c #3476FF",;
"' 	c #3276FF",;
") 	c #538BFA",;
"! 	c #96B4F0",;
"~ 	c #DADEE7",;
"{ 	c #90B0F2",;
"] 	c #4582FD",;
"^ 	c #3B7CFF",;
"/ 	c #3D7DFF",;
"( 	c #4683FF",;
"_ 	c #4D88FF",;
": 	c #7BA2F2",;
"< 	c #86ABF9",;
"[ 	c #85A9F2",;
"} 	c #4B87FF",;
"| 	c #417FFF",;
"1 	c #2F73FF",;
"2 	c #3A7AFD",;
"3 	c #89ABF2",;
"4 	c #3F7EFF",;
"5 	c #95B6FA",;
"6 	c #C5D7FC",;
"7 	c #F6F9FF",;
"8 	c #D9E5FD",;
"9 	c #AAC4FB",;
"0 	c #6D97EC",;
"a 	c #2D72FF",;
"b 	c #4E87FA",;
"c 	c #C6D2EA",;
"d 	c #4884FF",;
"e 	c #89AEF9",;
"f 	c #EBF2FF",;
"g 	c #E2EBFD",;
"h 	c #C1D1F3",;
"i 	c #BBCDF1",;
"j 	c #B9CCF2",;
"k 	c #A4C0FB",;
"l 	c #5589F3",;
"m 	c #2B71FF",;
"n 	c #3476FD",;
"o 	c #C2CFEA",;
"p 	c #5D90F6",;
"q 	c #B0C9FB",;
"r 	c #E0EAFF",;
"s 	c #D1DFFB",;
"t 	c #FFFFFF",;
"u 	c #C9DAFD",;
"v 	c #759AE8",;
"w 	c #276EFF",;
"x 	c #3275FD",;
"y 	c #D9DEE7",;
"z 	c #C0D4FD",;
"A 	c #D7E5FF",;
"B 	c #C1D4F9",;
"C 	c #B6C9F0",;
"D 	c #CFDFFE",;
"E 	c #7299E9",;
"F 	c #266DFF",;
"G 	c #4A83FA",;
"H 	c #A2BFFB",;
"I 	c #CBDCFF",;
"J 	c #C6D8FD",;
"K 	c #B7CEFD",;
"L 	c #4E85F5",;
"M 	c #246CFF",;
"N 	c #84A8F2",;
"O 	c #7DA5F9",;
"P 	c #C2D7FF",;
"Q 	c #A3BDF2",;
"R 	c #E6EEFF",;
"S 	c #C4D7FF",;
"T 	c #C7DAFF",;
"U 	c #F2F7FF",;
"V 	c #9CBCFB",;
"W 	c #296FFF",;
"X 	c #2E72FD",;
"Y 	c #ABC6FD",;
"Z 	c #B5CEFF",;
"` 	c #BBCEF4",;
" .	c #AFC7F9",;
"..	c #F4F7FB",;
"+.	c #BBD1FF",;
"@.	c #5B8CF2",;
"#.	c #226BFF",;
"$.	c #8FAFF0",;
"%.	c #7CA5FA",;
"&.	c #ABC6FF",;
"*.	c #C2D3F6",;
"=.	c #A2BFF9",;
"-.	c #D7E0F2",;
";.	c #C0D5FF",;
">.	c #94B6FC",;
",.	c #80A9FB",;
"'.	c #6898F8",;
").	c #437FFA",;
"!.	c #4482FF",;
"~.	c #8BB1FC",;
"{.	c #A0BFFF",;
"].	c #B8CEFC",;
"^.	c #F8FBFF",;
"/.	c #A5C3FF",;
"(.	c #91ACE4",;
"_.	c #7EA6FA",;
":.	c #5E91FB",;
"<.	c #548DFF",;
"[.	c #1E68FF",;
"}.	c #CCD6E9",;
"|.	c #91B4FE",;
"1.	c #95B8FF",;
"2.	c #A2C0FF",;
"3.	c #91AEE8",;
"4.	c #E0E7F4",;
"5.	c #D6E3FD",;
"6.	c #B3C6EC",;
"7.	c #558CFC",;
"8.	c #8AB1FF",;
"9.	c #8EABE8",;
"0.	c #F5F8FE",;
"a.	c #719DF8",;
"b.	c #1D67FF",;
"c.	c #80A5F2",;
"d.	c #6596F9",;
"e.	c #7FAAFF",;
"f.	c #85A3E0",;
"g.	c #7CA5F8",;
"h.	c #1B66FF",;
"i.	c #7FA5F2",;
"j.	c #6394FA",;
"k.	c #73A1FF",;
"l.	c #1A65FE",;
"m.	c #8CADF2",;
"n.	c #528AFE",;
"o.	c #6699FF",;
"p.	c #6799FE",;
"q.	c #AFC1E7",;
"r.	c #EAF1FE",;
"s.	c #568EFF",;
"t.	c #5F94FF",;
"u.	c #5E93FE",;
"v.	c #5C91FE",;
"w.	c #5A91FF",;
"x.	c #D6DFF1",;
"y.	c #7CA6FB",;
"z.	c #1A64FC",;
"A.	c #B2C5EB",;
"B.	c #5B91FF",;
"C.	c #5D92FF",;
"D.	c #D7DFF0",;
"E.	c #E1EBFE",;
"F.	c #1A64FB",;
"G.	c #CCD5E8",;
"H.	c #528AFA",;
"I.	c #C3D3F3",;
"J.	c #AEC9FF",;
"K.	c #407CF7",;
"L.	c #95B3F0",;
"M.	c #538AFB",;
"N.	c #6396FF",;
"O.	c #6D9DFF",;
"P.	c #A9C6FF",;
"Q.	c #9EBEFF",;
"R.	c #4A85FB",;
"S.	c #8CACEF",;
"T.	c #3677FD",;
"U.	c #6A9BFF",;
"V.	c #6391ED",;
"W.	c #B1C5EE",;
"X.	c #7BA5FB",;
"Y.	c #236BFC",;
"Z.	c #266CF9",;
"`.	c #D9DDE7",;
" +	c #598CF3",;
".+	c #6D99F2",;
"++	c #E0E6F2",;
"@+	c #7AA6FF",;
"#+	c #5287F2",;
"$+	c #7FA4EF",;
"%+	c #6B96EE",;
"&+	c #78A5FF",;
"*+	c #729AEE",;
"=+	c #9ABCFF",;
"-+	c #6591EC",;
";+	c #407CF5",;
">+	c #7299EA",;
",+	c #7BA4F7",;
"'+	c #90B4FF",;
")+	c #6E97E9",;
"!+	c #266CF7",;
"~+	c #3274FD",;
"{+	c #6B94E9",;
"]+	c #88B0FF",;
"^+	c #D9E6FF",;
"/+	c #6691E6",;
"(+	c #BFCDE9",;
"_+	c #4882FA",;
":+	c #3876F5",;
"<+	c #7DA1E9",;
"[+	c #7C9EE4",;
"}+	c #2F70F3",;
"|+	c #83A8F2",;
"1+	c #206AFF",;
"2+	c #3B77F2",;
"3+	c #6E95E3",;
"4+	c #84A6EA",;
"5+	c #97B9FF",;
"6+	c #8CAEF2",;
"7+	c #83A5E9",;
"8+	c #6B91E1",;
"9+	c #3472F1",;
"0+	c #7FA4F1",;
"                                                                ",;
"                        . + @ @ @ # $ %                         ",;
"                  & * = - ; ; ; > , ' ' ) ! ~                   ",;
"                { ] ^ / ( _ : < < [ } | > 1 2 3                 ",;
"            & = ^ 4 } 5 6 7 7 7 7 7 7 8 9 0 ' a b ~             ",;
"          c ] ^ d e 8 f f g h i j j j f f f k l m n o           ",;
"        & ] ^ p q r r s j j t t t t t j j r r u v w x y         ",;
"        = ^ } z A A B C t t t t t t t t t j A A D E F G         ",;
"      { ^ d H I I J C t t t t t t t t t t t j I I K L M N       ",;
"    & ] / O P P P Q t t t t R S P T U t t t 7 P P P V W X y     ",;
"    * ^ } Y Z Z Z ` t t t 7 Z Z Z Z  ...t t t +.Z Z Z @.#.$.    ",;
"    = / %.&.&.&.&.*.t t t I &.&.&.&.=.-.t t t ;.&.>.,.'.F ).    ",;
"  . - !.~.{.{.{.{.].t t ^./.{.{.{.{.(.t t t t _.:.<.<.<.; [.}.  ",;
"  + ; _ |.1.1.1.1.1.Z T 2.1.1.1.1.3.4.t t t 5.<.<.<.<.<.!.[.6.  ",;
"  @ ; 7.8.8.8.8.8.8.8.8.8.8.8.8.9...t t t 0.a.<.<.<.<.<.} b.c.  ",;
"  @ > d.e.e.e.e.e.e.e.e.e.e.e.f...t t t 0.g.<.<.<.<.<.<.<.h.i.  ",;
"  # > j.k.k.k.k.k.k.k.k.k.k.E ..t t t 0.g.<.<.<.<.<.<.<.<.l.i.  ",;
"  m., n.o.o.o.o.o.o.o.o.o.p.q.t t t r.O s.s.s.s.s.s.s.s.} l.i.  ",;
"  $ ' _ t.t.t.t.t.t.t.u.v.w.x.t t t y.w.w.w.w.w.w.w.w.w.!.z.A.  ",;
"  % ' !.B.u.u.u.C.B.B.B.B.B.D.t t E.B.B.B.B.B.B.B.B.B.B., F.G.  ",;
"    H.> C.C.C.C.C.C.C.C.C.C.I.t t J.C.C.C.C.C.C.C.C.C.C.[.K.    ",;
"    L.1 M.N.N.N.N.N.N.N.N.N.O.P.Q.N.N.N.N.N.N.N.N.N.N.R.F.S.    ",;
"    ~ 2 T.U.U.U.U.U.U.U.U.U.V.j W.X.U.U.U.U.U.U.U.U.U.Y.Z.`.    ",;
"      3 m  +k.k.k.k.k.k.k..+++t t 7 @+k.k.k.k.k.k.k.#+F.$+      ",;
"        b m %+&+&+&+&+&+&+*+t t t t =+&+&+&+&+&+&+-+F.;+        ",;
"        ~ n w >+e.e.e.e.e.,+7 t t t '+e.e.e.e.e.)+F.!+`.        ",;
"          o ~+F {+]+]+]+]+]+Q.^+r J.]+]+]+]+]+/+F.!+(+          ",;
"            y _+M :+<+'+'+'+'+'+'+'+'+'+'+[+}+F.;+`.            ",;
"                |+X 1+2+3+4+m.5+5+6+7+8+9+F.Z.$+                ",;
"                  y $.).[.b.h.h.l.l.z.F.K.S.`.                  ",;
"                        }.6.c.i.i.0+A.G.                        ",;
"                                                                "}

/* Image class */
function UIImage( file, isString )
    local obj
    if valtype(file) == "N"
	obj := driver:createImage( getSysImage( file ), .T. )
    else
	obj := driver:createImage( file, isString )
    endif
    obj:className := "UIImage"
    _recover_UIIMAGE(obj)
return obj

function _recover_UIIMAGE( obj )
return obj

function getSysImage( id )
	local idImages := array(5)
	idImages[IMG_EMPTY] 	:= empty_xpm	// Empty transparent pixmap
	idImages[IMG_OK] 	:= info_xpm	// i
	idImages[IMG_ERROR] 	:= error_xpm	// Error (cross on red field)
	idImages[IMG_WARNING] 	:= warning_xpm  // Exclamation mark
	idImages[IMG_QUESTION] 	:= question_xpm // ?
	if id<0 .or. id>len(idImages)
		return empty_xpm
	endif
return idImages[id]