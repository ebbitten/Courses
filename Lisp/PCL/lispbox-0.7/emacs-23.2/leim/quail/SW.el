;; Quail package `chinese-sw' -*- coding:chinese-iso-8bit-unix; byte-compile-disable-print-circle:t; -*-
;;   Generated by the command `titdic-convert'
;;	Date: Sat May 08 08:42:58 2010
;;	Original TIT dictionary file: SW.tit

;;; Comment:

;; Byte-compile this file again after any modification.

;;; Start of the header of original TIT dictionary.

;; # Header added for Emacs
;; #
;; # This file is included in the directory contrib/clients/cxterm of the
;; # distribution of X11R6.  As the file itself does't contain copyright
;; # and license notices, the following statements in the section 6 of
;; # the file .../cxterm/README covers it.
;; #
;; # X11R6 CXTERM (C) 1994 BY YONGGUANG ZHANG.
;; # X11R5 CXTERM (C) 1991 BY YONGGUANG ZHANG AND MAN-CHI PONG.
;; # 
;; # Permission to use, copy, modify, and distribute this software and
;; # its documentation for any purpose is hereby granted without fee,
;; # provided that this entire copyright and permission notice appear
;; # in all such copies, and that the name of the authors may not be
;; # used to endorse or promote products derived from this material
;; # without specific prior written permission.  The authors make no
;; # representations about the suitability of this software for any
;; # purpose.  It is provided "as is" without express or implied warranty.
;; #
;; # End of header added for Emacs
;; #
;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 2
;; ENCODE:	GB
;; AUTOSELECT:	NO
;; PROMPT:	�����������β��\040
;; #
;; COMMENT	(Դ�� CCDOS)
;; COMMENT	��д�ú���ʱ�ġ��ױʡ�����β�ʡ������磬��������β�ʽ�Ϊ���ڡ�������
;; COMMENT ����β��ģʽ���� ff0 �������롣�� f ���ڡ���β��ģʽ�б�ʾ���ڡ���
;; # define keys
;; VALIDINPUTKEY:	abcdefghijklmnopqrstuvwxyz
;; WILDCARDKEY:	*
;; WILDCHARKEY:	?
;; SELECTKEY:	1\040
;; SELECTKEY:	2
;; SELECTKEY:	3
;; SELECTKEY:	4
;; SELECTKEY:	5
;; SELECTKEY:	6
;; SELECTKEY:	7
;; SELECTKEY:	8
;; SELECTKEY:	9
;; SELECTKEY:	0
;; BACKSPACE:	\010\177
;; DELETEALL:	\015\025
;; MOVERIGHT:	.>
;; MOVELEFT:	,<
;; REPEATKEY:	\020\022
;; KEYPROMPT(a):	����
;; KEYPROMPT(b):	ڢɽ
;; KEYPROMPT(c):	ʬ��
;; KEYPROMPT(d):	ؼ��
;; KEYPROMPT(e):	����
;; KEYPROMPT(f):	�ڿ�
;; KEYPROMPT(g):	����
;; KEYPROMPT(h):	����
;; KEYPROMPT(i):	ڥ��
;; KEYPROMPT(j):	ܳ��
;; KEYPROMPT(k):	����
;; KEYPROMPT(l):	ľ��
;; KEYPROMPT(m):	��ʮ
;; KEYPROMPT(n):	⻴�
;; KEYPROMPT(o):	����
;; KEYPROMPT(p):	����
;; KEYPROMPT(q):	ʯ��
;; KEYPROMPT(r):	��ح
;; KEYPROMPT(s):	��Ů
;; KEYPROMPT(t):	د��
;; KEYPROMPT(u):	����
;; KEYPROMPT(v):	��С
;; KEYPROMPT(w):	�볧
;; KEYPROMPT(x):	���
;; KEYPROMPT(y):	һ߮
;; KEYPROMPT(z):	�˲�
;; # the following line must not be removed
;; BEGINDICTIONARY

;;; End of the header of original TIT dictionary.

;;; Code:

(require 'quail)

(quail-define-package "chinese-sw" "Chinese-GB" "��β"
 '(   (122 . "�˲�")
   (121 . "һ߮")
   (120 . "���")
   (119 . "�볧")
   (118 . "��С")
   (117 . "����")
   (116 . "د��")
   (115 . "��Ů")
   (114 . "��ح")
   (113 . "ʯ��")
   (112 . "����")
   (111 . "����")
   (110 . "⻴�")
   (109 . "��ʮ")
   (108 . "ľ��")
   (107 . "����")
   (106 . "ܳ��")
   (105 . "ڥ��")
   (104 . "����")
   (103 . "����")
   (102 . "�ڿ�")
   (101 . "����")
   (100 . "ؼ��")
   (99 . "ʬ��")
   (98 . "ڢɽ")
   (97 . "����")
)"�����������β��

	(Դ�� CCDOS)
	��д�ú���ʱ�ġ��ױʡ�����β�ʡ������磬��������β�ʽ�Ϊ���ڡ�������
 ����β��ģʽ���� ff0 �������롣�� f ���ڡ���β��ģʽ�б�ʾ���ڡ���

Radical base input method for Chinese charset GB2312 (`chinese-gb2312').

In this input method, you enter a Chinese character by typing two
keys.  The first key corresponds to the first (��) radical, the second
key corresponds to the last (β) radical.  The correspondence of keys
and radicals is as below:

 first radical:
 a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
 �� ڢ ʬ ؼ �� �� �� �� ڥ ܳ �� ľ �� � �� �� ʯ �� �� د �� �� �� �� һ ��
 last radical:
 a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
 �� ɽ �� �� �� �� �� �� �� �� �� �� ʮ �� �� �� �� ح Ů �� �� С �� �� ߮ ��

\\<quail-translation-docstring>
"
 '(("\C-?" . quail-delete-last-char)
   
   ("." . quail-next-translation)
   (">" . quail-next-translation)
   ("," . quail-prev-translation)
   ("<" . quail-prev-translation))
 nil nil nil nil)

(quail-define-rules
("aa" "�溶����˫�������������")
("ac" "������ʥΩ�������")
("ad" "������Ȱ�������������")
("ae" "�˻��")
("af" "��ǡ�����������")
("ag" "�޼���")
("ah" "��")
("ai" "�ÿ�����")
("aj" "�Լ����������")
("ak" "����")
("al" "ɣ���")
("am" "������и�����������")
("ao" "������ų������������")
("ap" "��")
("ar" "�ѻ�����")
("as" "����")
("at" "�زҳ��ۻŻп��������������������")
("au" "����ϧ������")
("av" "�����������")
("ax" "��")
("ay" "����æϷ�����������")
("az" "�߹߻����������")
("ba" "�ž���������")
("bb" "������ɽҤڢ��")
("bc" "��������������")
("bd" "���Ѻ���������������д����������")
("be" "̿��۩�")
("bf" "���ٺ����ҽѾ�������ڣ�����")
("bg" "ũ�����")
("bh" "�����")
("bi" "įʵͻϿ�")
("bj" "�����������ѧ�����������������������")
("bk" "��������")
("bl" "��������կ�������")
("bm" "���庱������������")
("bn" "���")
("bo" "���ڻ¿�������Ԣ������������")
("bq" "����")
("br" "������ո����")
("bs" "����Ѩ������ڤ������")
("bt" "�赳�ھ������ܿ���������������Ρ����ԩլ������������")
("bu" "�����������������")
("bv" "�������������")
("bx" "���")
("by" "������������������")
("bz" "��Ƕ����խ���")
("ca" "��Ļ�������ο־����ܬܲ�������������")
("cb" "����ܥ��")
("cc" "�ڶѹ͹�����ʬʿ��������ܧ��")
("cd" "���෻���սپ��־���������������Τ����������ܣܨ������������")
("ce" "����ȴ��")
("cf" "�������ξ���Ʃ������ϲ��������")
("cg" "����Ԭչ����")
("ch" "���õ̵帰������Ȥ��Խ����������������")
("ci" "������ܩ������")
("cj" "�⾲���ˢ��ξТ�����������������")
("ck" "��ȥ̳��")
("cl" "����ĩʺδ��ܦܮ������")
("cm" "�ٲ����ƺ��Ϭ������ܯܱ������")
("cn" "����")
("co" "���۱�շع����������������̮��м����������ܡܪܭ����������")
("cq" "������")
("cr" "���������")
("cs" "������������")
("ct" "�ҵغľ��ǿ�������ƨβ��������������������ܢ�������������")
("cu" "�߶��½�üǽ����������ܰ��������")
("cv" "��������ܤܫ����")
("cw" "��")
("cx" "���")
("cy" "�Ǻ�������̹������Ҽ��ԫַ�������������")
("cz" "�ӿ�����׸�����������")
("da" "��￢����������������������")
("db" "�����")
("dc" "�Ի�ͯҫӺ׳׼�����")
("dd" "�۷��۷�����ȯ������Ϊ������ؼ��ۿ����������������")
("de" "����������������۵")
("df" "��������˾������ұ��ճվ�����")
("dg" "������������˥������װ����������")
("dh" "������")
("di" "�ս�����ͷ״��������")
("dj" "�������������������ȭͤ���������")
("dk" "��ڡ��")
("dl" "�⽰����������������")
("dm" "���ױ����䶷�Ծ�����������������")
("dn" "��")
("do" "�ֳ�����˶طŸ߸��������������Ŵ��������ФЧҹ������ի������������")
("dp" "�")
("dr" "��������Ѿ�������")
("ds" "����¦����������ױ����")
("dt" "��ɵ����������;�������ʩϰ��Ӯ�����������������������")
("du" "���߾�äĶƳ��ȿ������֮������")
("dv" "���ڶ����������������������")
("dw" "������")
("dx" "����")
("dy" "�����ֵ�������¾å��������������")
("dz" "����θӺ���������")
("ea" "��Ϩ��������������")
("eb" "��½")
("ec" "�ݶ�¡¯��׹����")
("ed" "������ɿ��ϩ������")
("ee" "��������۰��")
("ef" "��������������")
("eg" "������")
("eh" "��")
("ei" "��Ȳ����")
("ej" "���Ƹ�������")
("ek" "����")
("el" "��úȼ����")
("em" "�麸������������������")
("eo" "��������������������")
("ep" "��")
("eq" "��")
("er" "�ͽ�����")
("es" "���")
("et" "����¤����������Ժ����������")
("eu" "İ��������������")
("ev" "���¼�����˸����϶������")
("ex" "��")
("ey" "����ª������������")
("ez" "���ӷ���ը����")
("fa" "����̾֨��������������������������������")
("fb" "����")
("fc" "��������Ψ���������������")
("fd" "����Ժž������������̣������������ѫӴ߶߷߿��������������������������")
("fe" "�ɶ�����۫ߵ������������")
("ff" "�������ῦ������·��Ʒ��ɶ��������������������������������")
("fg" "����ι������������")
("fh" "�����")
("fi" "�����ͺ���������Ծ߻߾�������������")
("fj" "����춣�׸��кǺߺ�������ѽ���������������")
("fk" "ߺ��")
("fl" "�ȴ������ɤζ����������������������")
("fm" "��ơҶ��������������������")
("fn" "������")
("fo" "���Ĳ������������Ż������ҧӻ�����������������������������������������������")
("fp" "��")
("fq" "����")
("fr" "�ʴڽ���˻��Х߹����������")
("fs" "�Ⱥ�ſֻ�������")
("ft" "�ɳ��Զֹ�𻣿���������Ǻ˱��������߳ߴ߸߼߽��������������������������������")
("fu" "�䳪��������ž��̤����������������������")
("fv" "ӽ�����������������������")
("fx" "����")
("fy" "�Ÿº�������Ŷ����������ҭ��ֺ���������������")
("fz" "���ȿ�������Ազ߲�������������������")
("ga" "�ΰ�ⱨ����޺���������������ͶԮ����")
("gb" "��ҡ׾")
("gc" "���ݴ��һ���̯����ײ��ߪ߫")
("gd" "��󵷷��վп�������°������Я�����������")
("ge" "��Ų������")
("gf" "���ݿ�������ʰ��̧����������������")
("gg" "��������ߧ߭")
("gh" "����׽��")
("gi" "����������Ю������")
("gj" "�Ʋ��ųִ�š����ֿ��������ߤ")
("gk" "��")
("gl" "�ٲ�Ĩ����̽������")
("gm" "�赧��������������ƴǤˤҾ��������ߦߨ")
("gn" "��")
("go" "����������ܾ��Ʋ����ɨ����ͱҴӵժ��������")
("gp" "����")
("gq" "��")
("gr" "��˩˺Ѻ��������ߥߩ")
("gs" "���Ǳ�����§׫��")
("gt" "�ѱ������󸧽�����£����������������������������ִ����")
("gu" "����鴤��ҿ�������Ĵ����ָץ������ߡߣ")
("gv" "��������̢ͦ��������߬��")
("gw" "��")
("gx" "ɦ����")
("gy" "���굣�ּ񿸿�������Ť��������ק����")
("gz" "�������������������ߢ��")
("ha" "���ɺ���������û��������������������")
("hb" "��")
("hc" "�໦����̲��Ϋ��������������")
("hd" "���зڹ�����������������������к�������������������")
("he" "��������")
("hf" "�����ƻ��º��Ǣ����ԡմ��������������")
("hg" "����Ũ������")
("hh" "�������")
("hi" "�Ļ�Į̭��Ϫ��������")
("hj" "�ⴾ����Ţ��͡�������������������������")
("hk" "�����������")
("hl" "������������ĭ����Ⱦ��Ϳ��������������")
("hm" "������������̶������֭����������")
("hn" "ϫ��������")
("ho" "�����ζ�������������©��Ž����������μ��������Һӿ���������������")
("hp" "������")
("hq" "�")
("hr" "�ý�����Ԩ����ע���������������")
("hs" "���������������������")
("ht" "�׳��ظȸۻ콽������������ɳ������ϴ��������������������������������")
("hu" "�������Ծƿ�������Ǳ������������������������������������")
("hv" "����Ư����������ӾԴ�����������")
("hx" "��")
("hy" "�λ㽦����������ǳɬʪ��йѴ������տ�����������������")
("hz" "��������������")
("ia" "á��̬��������")
("ib" "ҥڨڰ")
("ic" "����˭ڴ")
("id" "�����ʷú����̫ѯ��ڼ����������")
("ie" "̸ڶ")
("if" "��ŵ��ڬگڱڵڸھ������")
("ii" "�����Ȯ��ڥ������")
("ij" "������ʫ��л��׻����ڭں��")
("ik" "����")
("il" "����ı��ڳ��")
("im" "���ƽ���ǣ̷������ڦڻ����")
("io" "��������ν����کڪګڲڽ�����������")
("ip" "��")
("ir" "ѵڹڿ��")
("is" "ʶ��")
("it" "����Ѽ���������˵������ڷ����")
("iu" "�ܻ���ǫ��г�������������")
("iv" "��������Ǵ��")
("iy" "�Ͻ�������Ѷ��֤��ڧڮ��������")
("iz" "�̸�������թ���")
("ja" "������������о��������������������ޥީ޲")
("jb" "��")
("jc" "�維«ĹЬܶ����������޳޷޽")
("jd" "���ٷ��ҹ��ھϾ�������Ļļ������ȵ������έҩܵܺ������������ݣݬݺ����������������")
("je" "ӫ۴����ݶ")
("jf" "��������������������ɻ̦Ӫ������������")
("jg" "����ݢݹ����")
("jh" "��")
("ji" "��Կ�ĪӢܽ��ݤ��������")
("jj" "���ɺʼ�����������éġ����εѿ������ܳ����ݡݧݩݪݳ������޶޿��")
("jk" "ܿ��ݿ")
("jl" "���˲轶��������պ��������ݱ����ޡ޹޻������")
("jm" "�ݸ�羮çƻƼ��Ѧ��ܷ����ݷ������ަ޵޺")
("jn" "����")
("jo" "���α޺�����ź������ɢ��ܸ������������ݫݯݼ������������ޱ޴޸����")
("jp" "��")
("jq" "Ģ����")
("jr" "�������нӨ������ݾޭ��")
("js" "������ήݴݽ����ޮ")
("jt" "�Űа��ͲԷ�������ɯ������ѥ��Էܴܹܻܼܾ����������������ݵݸݻ����������ޢޤް������")
("ju" "���ܷ���������ĺǾ��������֥����������ݮ��������������ޣިޫެ��")
("jv" "�̹���Ľ��ˮ��������ݥ����޼޾��������")
("jw" "��")
("jx" "��ө")
("jy" "�ؾ���âãï����إ����������������ݦݭݰݲ��������ުޯ��")
("jz" "�ķ�ȧ����������ݨ��������ާ���")
("ka" "�˳͵��¼��ٽ�������ɵ��������������")
("kb" "�������")
("kc" "���߼�������ֶٵ����������")
("kd" "�������·ݷ���������ΰα������١٨ٷ���������")
("ke" "������ۢ����")
("kf" "����������̨������٤٥ټ��������")
("kg" "��������ٯ����")
("kh" "��ͽ��")
("ki" "�����������ٶٹٿ")
("kj" "������÷��������κ��������ͣ͵������������������ٱ��")
("kk" "������������")
("kl" "������������������٪��������")
("km" "�黪����ĲƧǪʲ����٦ٰٺپ����������")
("kn" "��")
("ko" "���㶱����ż��ƫ����ʹ��΢��Ӷ��������٧٫ٮٳٸٻ������������")
("kp" "��")
("kr" "����������ס٭��")
("ks" "������������")
("kt" "���γ𻯽ľ����������ƾ������������������������٢٣٩٬�����")
("ku" "�۲������軲����ɮ��ѭ��������")
("kv" "��������ٴ��")
("kw" "ٲ")
("ky" "�����Ͷ����󽩾�����λ����ֵ����������")
("kz" "��������������ծ������ٽ��")
("la" "������Ȩ��������֦��������")
("lb" "��")
("lc" "�Ź�ȶ��׮׵�����������")
("ld" "����������ϡ�������������������������������")
("le" "�𳻷�������Ҭ���")
("lf" "����׺ͼϼڽսۿ������������������������")
("lg" "���������")
("lh" "����")
("li" "��ģШ�������")
("lj" "�ĳ��弾����������������������������")
("lk" "˽����")
("ll" "���ܿ�����ľɭ������������������")
("lm" "�ް��Ӹ˸ѿ��������������������������")
("ln" "�������")
("lo" "��������幣�񼫿�ö��������ͩͰ��ϭУդ��������������������")
("lp" "�")
("lq" "��")
("lr" "����˨����������")
("ls" "�����¥��ίӣ�������")
("lt" "��Ź�������´����ǹ��ɼ��˰��ͺΦκ�����������������������������������")
("lu" "�ز۴����̻�����÷�������������������������")
("lv" "����ƶ������������������������")
("ly" "��ȸܻ������̴еջֲ�������������")
("lz" "������ե����������")
("ma" "��������֧�����������")
("mc" "��¢ǵ��������������")
("md" "��ﲪ�����������ݿ�����Э��רת������������")
("me" "�������ۣ")
("mf" "�ż�ȹϽ��ԣ�������������������")
("mg" "��ɥϮԯշ����������")
("mi" "���򸤼����������������")
("mj" "���ųĴ̴浻��������������������")
("mk" "��")
("ml" "������ĳ����������������")
("mm" "����ܼ�����ʮ��������ئ�������������")
("mn" "��")
("mo" "���󸦸��ʺ����Ͼ����������������������������")
("mp" "��")
("mq" "����")
("mr" "������˹ն����")
("ms" "��������������")
("mt" "�������ſ�����������Ǭ����������Ҳ����ףظ���������������������")
("mu" "�������ʺ�������������������")
("mv" "��������»������̩��������")
("mx" "�����")
("my" "�ô����ؿ�����̻��������ֱ����������������")
("mz" "���߶ٹӺؼ�������ˬ������������")
("na" "���ƶͷ���������Թ�����������������������������������������")
("nb" "��")
("nc" "������׶��������������������")
("nd" "�����������ƹ�������������������Ϧ��ԧ��������������������������������")
("ne" "��í����������������")
("nf" "�����ݾ̾�������Ǧ��ղ�������������������������")
("ng" "��ҿ��������")
("nh" "����")
("ni" "þ��ۼ������������������")
("nj" "��ա����������������������������")
("nk" "����")
("nl" "����Ȼɷ�������������������")
("nm" "���������ǥ��п����������������������")
("nn" "����������")
("no" "�ָ���½ǽ�����ͭ��Կۻ�����������������������������������������")
("np" "������")
("nq" "��")
("nr" "�����������������")
("ns" "��������������")
("nt" "�������۷��꼢����������ɫ��Σϳ������������������������������������������")
("nu" "����������������³êǯ�������������������������������������������")
("nv" "��������������������������������")
("nw" "��")
("nx" "��ʴз������")
("ny" "������ťǮ�������������������������")
("nz" "������Ƿ����������������������")
("oa" "���������Ź������֫������")
("ob" "�")
("oc" "���ʤ����ӷ������������")
("od" "�򳦴ͷ��ι�����Ÿ����ϣв�����������������������")
("oe" "����ۭۧ۱ۺ��")
("of" "��¸��������̥��ͬ����������������������")
("og" "ŧ������")
("oh" "��")
("oi" "��Ĥ��ҽ������")
("oj" "�����Ƹ���ɲɾ�������������")
("ok" "��������")
("ol" "ɱ����������")
("om" "����Ƣ���������")
("on" "��")
("oo" "�ܲ�縬�Թǻ߽�����������Ҹس����������������")
("or" "���˽�����ϻ��������")
("os" "��������Ӥ��������")
("ot" "������ʼ�����ƥ˦ͮ���������������������������������")
("ou" "�������֬׬�������")
("ov" "����������ϥ����������������")
("oy" "�������ؼ�����������ǻ����������߱������������")
("oz" "���˺���ŷ���������������������������")
("pa" "�л���׺���������")
("pb" "�")
("pc" "����ά�")
("pd" "���޷ķ׻�������γ��Ѥ��Լ������������")
("pe" "��")
("pf" "���������������Ե�������")
("pg" "������")
("ph" "���")
("pi" "������")
("pj" "�ո����������")
("pk" "�������")
("pl" "��������")
("pm" "�����¼���������")
("po" "�����ټ��ɽʾ�������������������")
("pp" "����")
("pr" "������բ")
("ps" "����ӧ֯��������")
("pt" "���;�������ɴ��ͳ����������������������")
("pu" "������ϸ���������������������")
("pv" "������������������������")
("pw" "��")
("px" "��")
("py" "����̼꾭Ŧ��˿��ֽ�����������������")
("pz" "�Ҽ������������")
("qa" "�ɿ�Ƥ����Ԧ����")
("qb" "��")
("qc" "��¿����")
("qd" "���Ҹ�����������������������ש����������������������")
("qe" "��̼")
("qf" "����ԥ������������")
("qg" "��������")
("qh" "����")
("qi" "��������")
("qj" "��������ì��Ѱ����������������������")
("qk" "�ź�����")
("ql" "��������������")
("qm" "��������Ⱥ����������������������")
("qn" "����")
("qo" "����ĺ�����ƭ��ȷ��ʻ��Ӳ�����������������������")
("qq" "��ʯ��")
("qr" "������ѱ��פؾ����")
("qs" "�����������")
("qt" "�ڳ۵ʷ���������ɰ������������������������������������")
("qu" "�й»����������������")
("qv" "������µ¼������������")
("qw" "��")
("qx" "��ǿɧ���")
("qy" "����Ǽ�ｮ����������ӯةؽ���������������������")
("qz" "�Ѻ���������˶Ԥ������")
("ra" "���Ѳ���ɪ���������")
("rb" "��")
("rc" "����������")
("rd" "����������ʦ˧����������������")
("re" "������������")
("rf" "������������������")
("rg" "����������")
("rh" "�")
("ri" "����������")
("rj" "�������������")
("rk" "��")
("rl" "��������")
("rm" "����Ū����������")
("rn" "��")
("ro" "�������õȽ��ɺ��ʷ���������������")
("rq" "����")
("rr" "�߰മ��������ح������")
("rs" "�伽����������")
("rt" "���ȱе緫���������������������������������������")
("ru" "���Ծ���ñ�������������")
("rv" "��������������")
("rx" "��")
("ry" "���������ҵҷ����������")
("rz" "�ǹ��������֡�������")
("sa" "�ȷ޼�ūŭɩˡϱ����������")
("sb" "��")
("sc" "�������������")
("sd" "�ܷ��ּ�������Ŭ����ү����������������������������")
("se" "����֣۷��")
("sf" "�ùȼ�����ʼ����")
("sg" "�������")
("sh" "�")
("si" "����ؼ�����������")
("sj" "��ǰ������������")
("sk" "������")
("sl" "���ý�����")
("sm" "���������������")
("sn" "����")
("so" "�ո���������˷������������")
("sp" "�")
("sq" "�")
("sr" "��������")
("ss" "�˽�Ů��")
("st" "�ֶ���������ƿǼ������Ҧ������������")
("su" "�����ķ����������������������")
("sv" "������")
("sx" "��")
("sy" "���ǽ������������������������")
("sz" "��ƶǸ���������")
("ta" "�����η�����������ϢϤ��ػ�����������")
("tb" "�����")
("tc" "��ĵ������������")
("td" "�����Ҳ��ҵ��ĵ�췭�����˾�������������������Ѯ����ؿ��������۾������������������")
("te" "î����ӡ��ۡۥۨ۬ۮۯ۶��")
("tf" "����Ѻ������������������")
("tg" "��")
("th" "��")
("ti" "�³���ʧز�������")
("tj" "�򳸶���κ��˾�������ʣ�������������������")
("tk" "��ô��")
("tl" "�ɳ����޺�Ѭ���������")
("tm" "�ݱ��Ǹ�ţ��ǧ����˴����غ������")
("tn" "��")
("to" "�������������������������")
("tq" "��")
("tr" "�Ǵ��Իʽ�Ƭ���������")
("ts" "����������")
("tt" "�����ʲն������������������ëò��ƹ����̺��������ձ��دذرشط������������������������������������")
("tu" "�ײ��Ѷܷ����ϻ�ʿ���������Ҩ��ּצ��ض������������������")
("tv" "���˶���Ȫ��ͧϵ����")
("tw" "��")
("ty" "����������Ѫص������������")
("tz" "�⿿ó˳����ӱ������������")
("ua" "������ů˼Ͼ��������������")
("ub" "��")
("uc" "������ī������˯ͫ����������������")
("ud" "ĸ������ͼΧѼ�������������������")
("ue" "��������")
("uf" "�̻�����Ϲհ��������������")
("ug" "����η��������")
("uh" "�������")
("ui" "Ĭ��ӳ�������")
("uj" "�붢����ʱ����Ұ�������")
("uk" "��ѣ�")
("ul" "�ǹ���������������������")
("um" "����˲�������������������")
("un" "�������")
("uo" "��������������θ��خ���������������")
("uq" "ǭ")
("ur" "�����׽�������")
("us" "�������")
("ut" "�Ͷڻμ�������Ȧ������������Ӱ԰�������������������������")
("uu" "�������û޾�ð��ɹ������͹գ������")
("uv" "��������������")
("uw" "��")
("uy" "��������Ŀ����Ի�����������������")
("uz" "�����ЪԲ�����")
("va" "������")
("vb" "ң")
("vc" "��ȸ͢����")
("vd" "�ߵݼ�����͸ΥѲ��")
("ve" "ӭ��")
("vf" "ǲ����������׷������������")
("vg" "��")
("vi" "�������")
("vj" "������������")
("vk" "��")
("vl" "����;��")
("vm" "�űܷ꽨����Ǩ��������")
("vn" "��")
("vo" "��ͨ��������������������")
("vr" "�ѹ������")
("vs" "��")
("vt" "��������ѡ��Զ����")
("vu" "�Ƴٵ��϶ݶ���ʡ������")
("vv" "������Сѷ������������")
("vy" "��Ѹ������")
("vz" "����")
("wa" "�ȷϸ�ƣ������Ը������������")
("wb" "����")
("wc" "����®̱��ѹ��ׯ���������������")
("wd" "��������ʨ��ϯ��ӥ����������������")
("we" "������̵��")
("wf" "�մ����Ʀ�����������")
("wg" "���ۺ���Գ���")
("wh" "��")
("wi" "�﻾�������������")
("wj" "�޳���������Ħ���������������������������")
("wk" "������")
("wl" "���������������������")
("wm" "���Ѣ����������������������")
("wn" "���")
("wo" "���·踯����űȳʹӸӹ���������")
("wp" "��")
("wq" "ĥ")
("wr" "�Խ��Ȭ�����������")
("ws" "��������")
("wt" "�̱ӱ񴯴ö򷸸�����¹ħ�����������������������������������")
("wu" "������������è�����������������")
("wv" "��ͥԭ�����������")
("ww" "������")
("wx" "������")
("wy" "�ɵ׶����Ѿ�����ʢ������������Ӧ֢��������������")
("wz" "��������̡���������������������")
("xa" "�����������")
("xc" "�����������")
("xd" "�ڽ���ɸ�����������������������")
("xe" "����")
("xf" "����֩׭�������������������")
("xi" "�ؿ�Ц��������")
("xj" "����ȷ�������������������")
("xk" "���")
("xl" "����������������")
("xm" "��������������������������������")
("xn" "��")
("xo" "�ݹ�������ƪ��Ͳ������Ӽ������������������������������������")
("xp" "��")
("xr" "��������������������")
("xs" "�ɻ�¨�������")
("xt" "�ʱ���������Ӭ���������������������������������")
("xu" "���ѻ׼�����Ы���������������������������")
("xv" "������������������")
("xx" "��")
("xy" "�귤�ƺ����ǩ����������������������������")
("xz" "Ϻ������������")
("ya" "�϶񸲺������ȡ��ϼ����������")
("yc" "����������������")
("yd" "���ӹ�����Ƹ������ѳѻ����ؤ۽�����������������")
("ye" "������а��Ү��������۪ۤ۲۳۸۹")
("yf" "����ۿ���¶��������������")
("yg" "��������")
("yh" "������")
("yi" "��̪������")
("yj" "���絽�����绮�Ϳ�������������ءث��������������")
("yk" "����")
("yl" "��������������������")
("ym" "���ɼ߿���ƽ��������")
("yn" "����")
("yo" "�Ա±����Ҹ�������Ʈͪ������ѩ��������ت������������")
("yr" "�껭ȩآ������")
("ys" "ȢˣҪְ����")
("yt" "������������������������Ң��Ԫ��أ�����������������")
("yu" "�ٴ׺�����øù��ư˪��������")
("yv" "������Ʊʾ����")
("yw" "����")
("yx" "�������")
("yy" "�гܶ������ɸ깤���������ʭʽ����������һ��յ��ֳابج��߮߯߰�������������������")
("yz" "���蹱��������ҳ�������������")
("za" "���������������������")
("zb" "�")
("zc" "�ƹ�¬����������")
("zd" "������²�����")
("ze" "����жۦ")
("zf" "������ռ֪������")
("zg" "��ʳ����")
("zh" "��")
("zi" "ȱʸ��")
("zj" "����������������")
("zk" "��")
("zl" "������������")
("zm" "��ɡ������б׿�")
("zo" "�ݼ��ؿ�����Ű��ȣ������")
("zq" "����")
("zr" "���ý�ȫ��")
("zs" "��")
("zt" "�벽�ִ˻�����ع�������������������")
("zu" "��±ÿ������")
("zv" "����������")
("zy" "���Ե��̷շ��׺�����������������Щ����սֹ����������������������")
("zz" "�ӿ���­Ƶ����̰է����������")
)
