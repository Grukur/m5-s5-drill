PGDMP         0                {            m5_s5_drill    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17193    m5_s5_drill    DATABASE     ~   CREATE DATABASE m5_s5_drill WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE m5_s5_drill;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17214    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    estreno numeric(4,0) NOT NULL,
    director character varying(100) NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false    4            �            1259    17213    pelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pelicula_id_seq;
       public          postgres    false    4    215            
           0    0    pelicula_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pelicula_id_seq OWNED BY public.pelicula.id;
          public          postgres    false    214            �            1259    17221    reparto    TABLE     �   CREATE TABLE public.reparto (
    id integer NOT NULL,
    id_pelicula integer NOT NULL,
    actor character varying(100) NOT NULL
);
    DROP TABLE public.reparto;
       public         heap    postgres    false    4            �            1259    17220    reparto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reparto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reparto_id_seq;
       public          postgres    false    217    4                       0    0    reparto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reparto_id_seq OWNED BY public.reparto.id;
          public          postgres    false    216            j           2604    17217    pelicula id    DEFAULT     j   ALTER TABLE ONLY public.pelicula ALTER COLUMN id SET DEFAULT nextval('public.pelicula_id_seq'::regclass);
 :   ALTER TABLE public.pelicula ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            k           2604    17224 
   reparto id    DEFAULT     h   ALTER TABLE ONLY public.reparto ALTER COLUMN id SET DEFAULT nextval('public.reparto_id_seq'::regclass);
 9   ALTER TABLE public.reparto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       0    17214    pelicula 
   TABLE DATA                 public          postgres    false    215   �                 0    17221    reparto 
   TABLE DATA                 public          postgres    false    217   Z                  0    0    pelicula_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pelicula_id_seq', 101, true);
          public          postgres    false    214                       0    0    reparto_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reparto_id_seq', 1083, true);
          public          postgres    false    216            m           2606    17219    pelicula pelicula_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    215            o           2606    17226    reparto reparto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reparto DROP CONSTRAINT reparto_pkey;
       public            postgres    false    217            p           2606    17227     reparto reparto_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id);
 J   ALTER TABLE ONLY public.reparto DROP CONSTRAINT reparto_id_pelicula_fkey;
       public          postgres    false    215    3181    217                �	  x��Z�v�8��+�s�9�����+��C���X�ݧw 	Y�@@�J俙�,f1'�����@��t{fn��YD=n�[��n~��`ӻůlS&J����g�8�If�Y!�R��L��
�/��"-���=��~:������х���,���{��{��`a���E�����_�M#����Yp-�`k��<�����R>W�gVj�����:��a�;3��Q<�Mrܥ�������̔رyj�"��~X�\���X�	��cp�¿�X��k�[�}ކ�r/
a�5O�.���uR�p�Ff\ZZ��p�le�+�f�wpy4˔@g<����Q���b
��}�'FG�=��^Z^p��{ƭL�v�Y�U&S��M��pv/,>�ĳ�u.Qq�Q�Dj���^k�'O,ߊ��N�4��/e1�m�j�V!��:OWR#�m�Jk�b+4�o�P���h�	��˻z��f��(��#�8�Jn3�f\W���r�x4�٤�ED�v�gm���K-3���wBv��*�6�Ӝ�-��+挂y�v�d�Q�1� ?���3d}Y\��Q��f�&T��_����u�����Icfa٤t)�p-�Fnj�8ՙ_��\�L���I6@.�o���2��r��[�c�h�0�c��{ti4u����MF�W��<UK�Ȱ3T)p7S��>%�������N���;v�w"�EJ���IX����/��]/�:�o'����Y��1y�bw�yU��j��������ڰ��gݥ�V�kh�@��/&�Mz�#eͣЙ(������Y��Ê�9�h��T
����F��+͋R���x��u����3^���V��fkX�>U&��3���#�����*b{�j-�wl;Z�=�/�.��?�LM��K�3ㅕ_kW�w��[���ӕ��9vہ��@}ζ�Z[n�Cw)p�Ѕ)aUԠ
����Y4S�r[�]X�p�M�L�F	���f����l�M�N��$iJv	}�����k��o��L�׉�ƀj�o��2��
f�WcS���'d��9��Rdkoqo)<B;��x��+�'�����O4&�T�s�Z�4�=/j�ͥ�)�| ����͖��zX��^;�|s��	Q9:��5�Rn��l�$�ѕ'śiHSϧ&��΍�B/��L=�E6���{����~�2��=��_	�=.���i�ޞ�c�k��%cOB�K��ကu�N�Ȉ�7��p<�� [�'�j�p%4e=?^��M�ĭk��t&C�N?�O�
�[�'l��K��Ɨ��g�n˔ǋ��(���f �⩈���ҷ��	�nW�|<�b�Z�7�[�����n%�Xc J��o~վ!<J�Cv������-$H2M����y�f�psal�����Cc���_��OzM��~�P[�?Scgg+���`�v�wܰ���������7d���d�u��K�^�E�<I�fL�>�*�����J=�T<l�O��L�j5D��H&��G2�,���x݄��T��"K�
��qu�@�Q�st'\4>�$F�����S�b�d�o�ZP6�	���Ń�A�S�m�M�3Xh=�hlf�!C����a*mS�#��}��M��V#�N��V���2sY�j�4�}?��c��	T8��J��0ap�sR��dw�!�u����?z�$s$ ���G�AM����S�E���V:�Fo(�i�eӤ�����O۲�"�5�?�t��B38A�D� �%����g?Mk��z+�Z�xX�8�p��^w����P��B"\�h�/��a�Lyb�a�Bd�����e4;�ɋq��*�/"��h؜l��LJ���A�� ��{�b��vd�� �����E����0��bWk9��3�G��a8I�x�����fT"4*A^�������5ռ\�Ka� <���h��k��6�>$�3~����M�_�3�:��d��mEj�.�.N�s�~˶F�~c��x��2�����ާ�L �	��x����R��Z�4�G?��mF&y���1�oo&���ΑW���o�#g�["J`
�.��('|���-�$υ� dKD���`��	����Dqjإ�{Y�i�D�<mL��n������6ɗ�웉�ƶZ-"���D�z�;�-6�Ƭ��w\a�!q���%/�|�d�f�"DJ&�$��	�����QK��g�  ODL`w��J�ާ���g�-���ƴ�A��0Y�p�m��rH��~�#��H�� Ͳ<u��<��*OW~M�h��^��S�pS��o�L<��&�$��a:GdѲ�x���
{;Wu����Vd��t����8����_L~ ׅ�7ʄc���ӯ1��}���a�~l��5�G�iSBڠ�M�|@�&��bE��H&-�N(8Y�+�I-rv%�xRO{��Jܾ[��c��������+8��x�ZMn�t�ݻ? 2��            x����n#I������s�*A�{`V"��R�T��LToN�Ez)�vFH�|��,�8��֋���ᔲ�n�4��W���n��;��/��/�O_�ݰh����r�M�ì~I���4��C�~IԲ��?�og����'�1�%����d�ɕ�^������K�^����t�wg֛>y�]��y�K���tf�cs�xwx�mo��m���m��^x����|6�]�*���^.��Sce�q�r�t��l�i�\����C�|�寔��*�<I���7�6V�	��>$ז���~��>Vwr:�1m�Z'7�~�h�Ѿ�v�f/8ص�tɣ�V�ˢ5��c��Y��N�&���[���Z�]��hY_l�����I�z��V�k�qf���k�p־D+������V�N��M��L휱�µ�Q��Ӡ۷:~�7^sjpl�Su�lzz���!�ҷ��./�٩n��t��7��*M�?];�Nɕ���4������%W�U���^�\�I��˥��,��Y%ߕ�ֳ|�JɃ���?N�є.[�J��@��h�ь���	��?~����㐜mM���Ȍ2���K���W�'H6�g�����L��ڒ]Δ���2�H�$����*p�e�=7t����fV�:���A~I�d�%�T�ݾ1.^���r3����Q?}��v���H�Y��������3���Gj>��㰢�vўy>����Bu������Cٮ�v�����7�E��hJg�|3k�Rъ�!��n�����$K����i�'3g��W���V�k�8�acug�����,1��{
��v�7^�kk^)�{�:z��㢎[�B<��z��~I���.��"57[�<����������4͗�,�y�Vt��7N�:}��}�[�O�ȴ���6��g
�Ȭ�ݦb4��N�g�'Gws2k��Ê��u��[���wks\��!�L�Z�;=�hY�W��������:�C������a68'�dZ��>]��w�I�[��ʼ$]'�4p��$����~�0�n����f�5�Dϐ7�V,��YG��\�������Om�_a�axY{ݯ�E0�L[k��ze��c��"ދ�N��A̤��}�AV�9�˺ۨ迼-I2�P����9S{�6�j��sK�Y�y҉��?G�ђn�k�t�J�ѐn�O���X� W����G�����i+u�h��|f�	N�.�r��s��	ݪ7���b���њ̨|O�ҺN��:��W�;l(�Y��wS�y�3�ȁ�X�l2Ou�E��e��u�E�F��]m�7~]�ߩ�k�H.�:7JEOu5
[G^S��i-�W�pt>��Q|�w*�ȁ�n�7����\���r\����u�L�}c��h^c�1�L��^ _܌&v�2{���&�=k�����k�py;�"�Z�_���f4�{�Gz���R��F�z4�rCv;��^�g��F:]�?�S��Kt8������Y���ޭ��������ny��[��h^���s�����4��h�����S��
a���<\�.�<���^S�螜^��ˡ��ONK/�k8�6�u��V^�Ҵɔ�վ	,j�5��:W+Oxrڌ��r/�ڽĲ����N&�ξ	��U�c�G�����5S�y������q��t�;/Q��թ�8%PL����?֡�ao�&XV-_��u���n��D��u�����D@ ����dZ�J 	:0�1
ߒ��_�2n��?%tq%�f!A� �������y���_@N@�A��r����V '0>��hv�����̺-�x��k��j���9�(�9�(y���Z�w+�.b����1M@R�O��%�h%�x�ڋ^j���rn%J���I�aO��|��!ޏ����5������o��E��KnPc�X������<i��gp'�+Xv<F�+���ʙ���p1
_l�"N��?�u Nx����/cO�ZLRag��~7-l�xX	8��,X@L��B�x��tT�+�0^�E�Ž��^&�.&a���t1�Y��]O��� ^���t97�[��#q偁���f�J��J�& 0XU�9���r��	(�wͩ�ǁ`��la�u%+`�*V:� �8n+�R���_R.u��Mn׭�?�`V���IlK6�-�qIW'E�.�j��%]���G#sʬ��$.�2���+�틊�e�1A,a c2�32��&�1��s�C����d������tpT`�:U��r%6@=���(����n��CX˒������M f�楱���5��w5@g��vz{H�D ,{���D�� �a��$;��
v�����V	 ��*��9Şf�|V�$Ъ`\ז6j2�er�Uu���@��\-�%�u~@�1uC<7?��iM��G�@"AhcR|� �$�RG�6X�'W���mAn���V`�;	{ ��?��wg����[���mհ2�<ڶ�?f p�,@���੯�B�����	֜���H�1@8&�`2��
b�@7POg�l��t�	f��E�d�*��`MIO��$�E�$��: ����A'@7XU�� �`UI6=�%&��������4ؗpx��Kn��������4��)�c���s�h�-�tQzLK6���㒌�S�(1㱷!�Q���y~��Y��ʏ�y�K���W�;]4\�ْC�z�%�n�O���n6�
��)��h<meQE���)w�h���g�J������~��6��M�g��oL�u��9R���ƒ��I���g�A�x�J����e�;�ni00_��
��4�i������A�k���[��o�4�����E�j�`^�1+��������A�v���O�4���?�-��e��/�^�L�i026/�+(֦��O�<�"͂��/�6��ůAv�1捤T�M����&��M�ς���Wˏ�X��}	��!wV��ʂ}]����D��:3�����Ĳ�}��b���HY0�K����
�Ai,�+w�m%<�|�~7��$�U��ʃ�}W��xU��`ac����f�y0�<���Ҽ8�H�E�#�����N""<FW������Γ��h:��E�=::'�����N�t�V/�E�`]g+�:y��uŴ�������[�^�:��`8��w{��N"��Q��6W�gH����~(<0�f�S��:���R�H�t�ڞ"r;�wI�q��y3�N�
�wőzʕdq�|����|b
����Qg|F"��'�S�,{9�'�� ���kR~e���_��_|1��9Q͹�@9��/GJ{:�YE�,K箢cW�|q�,*�Z��U���w� 8���Qt�I�s���2]k��>��F����H?6�������x�dG�Yꕣ���H<L�u|�}h9'����ȭ}7�U|'�������vV�MPZ#�J@��^��G<��V���[����z���Ϫ`n�[��U�m	�#���nXj����� x����v�P�t ,+ޭ:���HW���)0�N�Z������({>f�Ԧ� �RP,�ٓ�.�@�8�����?��@��I(?ma�%�@@��pN�ʜ��6��;��ON�ڶ�&)R�,;Wہ��]�^$���>X�\3��-�EEO��z�ܫFLaz�c��r3�yO�X�	�E}C��>��tĖ�[i�&V�8+���(}�e���[�����n7H�Ƌ{�{Ց#}��5�\AM�����w
�B�&�������)����§����~鴎/�e���6�E�.zCd`@P�BK�:ڃu�����aaI"ª�^�f�(^�>�3p �y��� ��w~���3@ i�~P��曁aY�����"U���`�&;8k��@8¢x�|gZ� ��-�i�Jf�^�~6�h[����Fĸ&��.V+�a/�������Wd@@R���Y��S$�G�+�+�{�Cg<����%g3[��O<��h���U�a^�3O~Z���>�V�SDg<��n�q����G��:�$�� ��({���~���
�+r|�|�+o    [i�-�r���ݚ�B/�ج2qM���>����`Y@�燖�Bx[s�cZ+`a<ڒ�,���܌�7;8E�?Xs6���3�[�G�Ե��)�qz%a� @��nԁ~2N�ǫ��5:%�D7��Gʽ��?���b�%E������-�S��3J���@X���o��&�3���q��^���3���Mu�����E��GZ�{�9V[��+��a��V|m ��ʏj�!a�k�	g�?��5�椌 ����H�����c�娊t"y���^���`ё�S�{5�O/`�@@��Hį�%��g�@X��"f�`�30V����y�o.@V�9!m���O(f��|Q,.��(y�̋J.��5.���+�L&���(y���s�Ɔ��&���~?5c��#�|���[Xg�����Q��J�H�a���s�݆v�h�-�������I � �_Q���7��
$Q���ndiAj�K��6=9?I�`[���30�0�J"=��Ua����Ch
�]��3L�ҿ���ڝ�|u=*���d���� �}��7��EsQ��f�� �U}K�Z�i�����<Q��ЏLt�z�#�iJ7Fb��|�y
��;gu�aS��}�Y�*|+�d�Հ���-Џ,̿~����J6�� }�j`��� �]����WC<������;�:�Y�:�٥Sυj�u05~J���:�Iq�y�+���Y�̷_�s�	�����6��������q]ڭ���|�Q�6`�L�y�@{��Hm��7�
�������N1��Aw-�k��_�*3۩��wa��̏c^�8� }��-����*�T���K;�ळ���;@����OG�,n�'�9�P����I�ρxd�{*�3o�Ò��JN��Ay���"�s0,+79=�a���9��p��KЛ9(���<�<Pe��$���<��Rxbvf$�i�,y!�{r�������;�MA�f�O��y�Xq�xU�W!�� <���9`�:���$^�����A��ʾ	Ļ9P�|;t�������v9Pf�`��j����z�*�@��R҃o�X��,Ѣ�<X��n�!���
����5��i�MG���3�'E�l�h>T:��@)��-n��J�{�Q�g��`~X	X ��,{��z���KP���
3�Đ����t�_���-a�(zc���|7�n|�����c��Z^�7���9bO�=s�f �b]���'�N�?�+}����g~�]��w�~?p1�-�	O[�q�f�s1�_0-�²�����)dޯ��/���Y�4HA�:~blԃ5�Ex���Or������G&?".���8���K�B {d��<Ϗ������̈��`l��sY#Ij��=XRv^hփu�]Z�,���`l�*`��9��H���9�#�X��C�Ꝁ���K��O.�V⃳Q�V�H����k��e�/7&>G���ȹ���l˲���I|v9�{W�Jm�D��H.�V%���c�;N~��m��������i9��<��D ��G>�(��<�v����s`�$\�����D�����7h�t�J\��'�d������إ�+��"$v$���k�ŭFU�'4;������
�s������>X��(���蕗�����_;�L��}|��0v$~Q���_�k��#޹��m��:��7�y y�����ء�
�uk��R����Z�h��9�l����e|�1��6�=�i���9p�<�2��r���}��%M���9p���d��O��v���tԞS`fl2S�J�?�;�X ��ʏt�>�x7����b����)^�8n3���n$� >�Ϧ]G7���G�Mȥ;$wj=H���z��q�!u@��m� =X���ɹz��ڃU}���� �#�:P�KW�P���0 ����ï���I27"7sp�{㔙�� X�#s�{.�g��'@y���4���O���z��/�q� �����
 �|A>����s�:w�c\b�Jq.��엛�C� �����HV�f�� ?�w��B;��t�#}d&�@?rnk`����O. ?X�?�!ϩ�P�G�{�6�����Q��ˢ�����\�����+�K� ���W���ݓ:����p��M�����G.8I� ��N�+�{���^|�/�N,�z����)"�l�+Z@��O�+~?#p���?���� ���g�^&�N��9���}�ك�o�x���ܩ�FG�1
0~	��&����"d���Y�nR���k��\SZ�x� �ħZo��T��|�\Љ=s���EL����bP���o���}��u >r_�1���������9f�e��@>r_���R%�x�T ��6�ND�x�܏�Z�YZ�E�GM��P��G�Z� =�f�+�/�o��.�m��� �G�q��yq����_V!,P�,�+��X��cjt�#����`���։�?��򫠘�՝3/r�,��bɣ�����o�`��s����x�^r!Z$-�!��9�|̰����v�e�"�f�r�`K����E�C�"���ܡ�+�.��y���x�%v&�C* x����Ɲm�"~���`Q�S/&��9PP/����˾	� ��Cϝ><�^Ȏ���o3�e���B�pL��!E�o�{�V,Ȏ"�.;&�I��UG�^-<p�Ň��+P���$�D� ���������O�{�1]�@/^8��t���K@����-yy_?}B��x�2p�����-���y��g�$�FP���%�0�g�TM��U��.��s�8�?}y�۬��� �B� ���\-Nn���]����G��/�,����������܂B�(�z�&:*�hi/L��E��[��,�Y�� ������gjz�L��	՞���2ˠ=�v�Ix���5�� �Q���;<�X9Kgc�,��"�0��(?�;
N�K�/@u�$�3��1�>���Q�w����� �Z��)5�×����)։�h
�ŇW��v�6�_5�~>��&g�/]Gq;�$M܃U}9#��|�xU���I��Fw�}�����_�����bV(����#s`��yݴ��_ �`��_�q��/7��^��{��I$1
҃5o��r��x�j��9�1I��9H�%�2�Lc���^������j� <�f�V��<:�1\�i0�G:��[�F��(�uu�:��ͽ@���QK8W�Mb�B	��_*� �� �S��(|�����SN�h>���e��&�tt��Jp�X+�7*���u����b8���R��]�׊ܙhI ,�3���(���:X�I����[�la��R[��ɣnw��`,�@���x�#�sM��}6]K��l �/k�a���r+f����J ����[W�������v��C�ㅛQ�ѼR�����3�)��Gq|���9�E�5>�/�yx�W���%@�"����.�>$%0�0r�E��&�QrO[r�)$?73�xxP��(}ھO��V�������J�㷺�Djj	ڃe�{��v�-��=�Ǣ}4�K�)����_G~��ӹ��~�N%��ۚut�\���:�Tg��-��|��e��=GK ���W�%p���� �����J��)A}4~�7gNh�bm�{6� >XYp�a	أ��_���<�0���Q�&WA�1w	�ï�-�t!�B����Ou)0��L�uan�O�m*�°�Q�u<BKX0@�ҏ]�
̃-�z�%���u��.2%x�=�W��ć���Q�`]���U��r	���bd��UOֶ�_����[�l/��Y�q�Q���a�E�0�?�����z��W@���:z�J�4R���J#��Ы�������Х)�
+ʟ�0Z߳���E�4�H/[�C�o��� X    �F9��3�ȋ�#Ƣ���:i����ّߜ�J��)�K��.��$TYY:�����m���Ph"pހ�(}=����Ɏ7^%?�{���Qj�l5�
�.�|��}�a�6�pН gU�`m�~�%���«|nVş`?X�l��=1��4��)�����>��5R)~���¼��^ڭ�#��o�*t	T�`j��~�*�Oo��]�U0�k�>x� ���I>�*����8��}��_Q>�&�`cO��� (Y���������x�`bO�N0�U)�p#~J� %O$7k��_�%����E�ெ��%���M�=�����Y ����dN��$�B�>X��v�yf�9�{%��o�_� am\i���ai������X�T	����u���3���k�@@X�������90 ���V6�4�������,pNK������:��I�K�$[╫Q�bU�<���l�k�,l-�Pz.^aQ���	²���+� ,+���²���;�s����ɲi*��%�W�BXU�ͫ����$5Z�aI�?x�� �%���蓦R����z���}+� �*88�¢��B�E��C��ng[��F�0�z[a�G�L7.:�	�l1��!)=��]<�]M�i]�v;�D;�G�դ:nYrk��Uŗ��I�.�^-��>/8����+P �8�S)�k���8����/&A�h�b�L�T��4�> ��E����j,�o�����ܛ�����*V��R��숰���i�{�l�3/d�������Z�&���UK<�� ��+ �LVV��/�+@ֺ�k�_;�@��Q���Aa�~/�
�(�gC��J�f����Q�Q/�r�d!U @�=���*��̓�͔������b�C;k}6T�dX��Ԧ�.��!>�V�����P;>$_�g����Gk�v�Wv_���`mg�Z����j���`l��-��ʃ�S�g�ϭv��H�y6� (~��ޟ��7�i0��sg[��.�- �|�����N�(�� R��}�Ŷ��)���*~�R���S|s%��C��������pp�P$	��H�����$���$O]�'�*0 ,{lX2��^@ ����uN��3*P �G<�I���Ry��nh_�t ��s��>%wV�L�*����PuamɡR���
�J�|��	�|��	:�DQ�B��k�~/��B0Ų�:���NJw1k_��P���5'�&㝷h��g�
H���\�BmE�*��ϊ��Y�aKUk�1pu�k��7���`k��%[�^���3�͒����xeX�)~@EmV0�Q�#�d0/:޿cǰ��(+�Z��e�6�aٱ�X��Џ������1'8��Pq̶��$7�����b\0���D� �BwAX���{�E}��3����@0V���!�WK�����	��N � �E�=�J��2~�K ���$�K���+�cT�f�Z ' į�������OL������ȎP�@�T�����8՝��
 �>m,z������M}�$&QT�@X��%J�k�@�ӝJ�ërљ��~���~.���5 �����]��_�aU�,�z�_��AxU�J�	!w!�M�O�y����H"�_�����ީ]�x����_����E��"\���m�u<�^�a�Y���N�@F��Um�����S�W����?��ݾ�h�R�˧�����?��'�\��Gk� ���V���o�T���5hV>��dfVՓ`i��<���<*Rt��A	TN�I�/�k ��!C�\Փ���Mm|�[��V8�������(H�;����Fq��>:�Pa��A��t���NɭW�̩W���5 VF�V��i'Ѕ�R�cB��{l��ÏxC ºtz�npF�E 	2��޴+L'W?����_0�-0�U?�º�*Й��N��J����a�>��[:~$k�s�͢�6On�8Ƴ`k�p�͓�H��"K��/�!.Yn�&D�ǈ>o�i޳b���c��:�'�k-4P�fP�/����NB�Uo4��;�<緿���Q����ƬT�Qu����VR�C���1�k�!�;;,x$�MX��5�ړHh9���j�5�ڃ'�Sgm|����^)�J>ɍ6}|o�|���0��>��КKhnd<���>ji�^Ǔ~5�z�ts�p��Z�c���^b�k8��G:7y�+��H5�2�T"{k "���Թ��-��Y<�~o%%8��!RO���s���S^5V�/��V[k��P"��H�4����?�2bj�!�G6Bf@L@d�`��I5 V��Ue��N5萟V�Ab�O6�e�6��j��A5Ȑ:�7+c�2��"�$�'��
���A�xE�5��1YQ��[ϥj�!���v��A����Rj�!,�:�
'Z\�����k�!,���R[���A�Ծ��^oQ[rt@F��=�9I�f��YcT�Y�����|F�E�^C���p[ï�0���N�`lx�/�ΣF���9h*�CA�D�Ϊ�w�1B�&Q�@�V�G�r?���]���A�*p�­�몐u�j_��q�׾�M���� �+�~b��j��QM�K��dY$R��_I��lx��h����W2�m���d�_ᖟ#m�u�Fv�@��x%�f�����F��`d>{s��5�G�Ņ�o�|�&�o:��3�I��J�[�߿	&6�	�2���&?.��{�j-�����蘹Q�L��	��^�;�Q�g�d�+����?\�F??��`Q�H"<im�����zNS} 6@@j��6F%�j����h��������v������䛕h�� ���-���.>a� �e�
d6(�ū������N.�B��`,K.K���j�Y����ǹ��Є��	�"O}p,���S�C_j&��|�"���k,�l�
��m�@�f���v��W����flL����Sr=��,*Z(l ��0�܀�`�kEμH��Q�E����_$��6�?����@���b�%0 �'O��^r6���lW���Zv4i�1�yx�ߤ��,Dr�x���CGNlA��m@~��m�p,˃�~���Q࣮���pV�l�� �`Ջ��%����
�`���{X�ݛ�\h֝:���x�����.苀�ȣ#���5�<�*�M�i$�� ����^0���ޒ��ZD-в6Z�I�~���ƙ��n7�z�a�S���o<�0�Q�W�˘qt3���	<h�ŏ[�<����9������h�`g3Ћ�B/q�1�ш�C܉M�x���ͨ	?Hs���?7Lwps�a��K�����ڝ�+OF����}򏖌7��d���I�ݻ�Y�	z��B��o�`�Q��@(�t��=��E�����N'_�S*܄"����>++0V�)��=�a�b��jE��[�W�Ŋb�^�`����8pD9Z�S*���)n�U�H��?X��'���p@w4�!����8]��9��n��n@u��S�f���! �`��2_V�d��%�PM�m'pr�� z�ѿx�f�����d�@G�;��`w�j������#|�tx�c!i�*��n��a ��5!^4E�gP4 9�u����I�� q���a��{W��i�hs� �`��՞���pр�`�3�/?Pl��`9X�kW�J�Q��V��0��[�"�0������]|� ��EٵW9v|A��\�*Pvl| ����0���*M�le��@V}2[�o� �"M�"|h�>k1�1�<Cɺ<�<�y�hFY�)�.�f��%�ֿ���x�Ah�r�m|C�=���2��p�]Ų���L	�V��8w��!�!C��/�\aXGslS�����K����F+	�	6��mr���j5M0)T�%U�������z���v #  }�v��9�Tr���$
�*�<ER�iq�up���͛r?t��sH?�y��(��t�Q��ݙ��]��"�r�f��|���K�ը���M"#L��(=��V)����g�ی��'�'ə��{'��MN~4�=ҝ��7�n��t�#�t�� �v/9L7�)��,}��t��a��YD�����1��%�^�k/���#��̠㳌�Z�����o&�-'�*|�Y�yIV��^&�̘�� ��x�D���)��&Llz������ь�9|sG��Αr:*��/�����_inݫ��.��G�s�0�8�����h1��@�	- Z��O��q�
� ?�0
�%�sq@@��Iv��,��l��/ɭ�d�?}빹�+�+����=6BL�K�j�)<�^�J�˂��it�V�������|>��v����H�8Zł�����<���Rro��$qc$Z��n5�ґ�[��\������P[�M�a�E'
�Z��1��������  Ms�C��NĉҌT�~In�Ȇ ª7����J[.0������A;�a($]�k
�{�mF�g+���×��I�oT��o�Ɨ�H���[�_�^�7	7Ax$Ϧ��K�^!^xn��}U/�4�a�t���+�/7K�-$�0��˫���<�4��z����Z:a[H���VD�֫F��r6ٙ�����XG�OE��V\5đ�,���g�Qp��	�vЧ����Vb��Hʊ;��H�U����I\���^"n�C�E怨C�x�J��u�AvB�M܏��E�����ᎈf     