-- Pasien

SELECT * FROM PASIIEN;

KD_PA NAMA_PASIEN
----- -----------------------------------
ALAMAT_PASIEN                            NOHP_PASIEN
---------------------------------------- -----------
00001 Riza
Banyumas                                   987654321

00002 Ilham
Purbalingga                                876543219

00003 Fadhel
Purwokerto                                 765432198


KD_PA NAMA_PASIEN
----- -----------------------------------
ALAMAT_PASIEN                            NOHP_PASIEN
---------------------------------------- -----------
00004 Fawwas
Sokaraja                                  1234567896

00005 Audi
Cilacap                                     34567891

00006 Wildan
Kebumen                                    567891234


KD_PA NAMA_PASIEN
----- -----------------------------------
ALAMAT_PASIEN                            NOHP_PASIEN
---------------------------------------- -----------
00007 Syahrial
Banjarnegara                              9873456123

00008 Demas
Brebes                                     987612345

00009 Irfan
Tegal                                      789654123


KD_PA NAMA_PASIEN
----- -----------------------------------
ALAMAT_PASIEN                            NOHP_PASIEN
---------------------------------------- -----------
00010 Dzakwan
Bumiayu                                    567982341


10 rows selected.

-- Paisen





-- Dokter
SELECT * FROM DOKTER;

KD_DO NAMA_DOKTER                         NOHP_DOKTER
----- ----------------------------------- -----------
SPESIALIS
-----------------------------------
DU001 Renggo                                123498765
Umum

PD002 Kafah                                 765489321
Penyakit Dalam

SA003 Athallah                               67892345
Anak


KD_DO NAMA_DOKTER                         NOHP_DOKTER
----- ----------------------------------- -----------
SPESIALIS
-----------------------------------
SS004 Dimas                                 764589321
Saraf

SK005 Alya                                  231654789
Kandungan

KK001 Syifa                                 345876921
Kulit


KD_DO NAMA_DOKTER                         NOHP_DOKTER
----- ----------------------------------- -----------
SPESIALIS
-----------------------------------
TH001 Moren                                 789653421
THT

SM001 Alfaen                                769845312
Mata

DG001 Naufal                                986754231
Gigi


9 rows selected.
-- Dokter





-- Perawat
SELECT * FROM PERAWAT;

KD_PE KD_DO NAMA_PERAWAT                        NOHP_PERAWAT
----- ----- ----------------------------------- ------------
PR001 DU001 Zaza                                   789654213
PR002 PD002 Syifa                                  789654213
PR003 SA003 Isma                                  3456798231
PR004 SS004 Alya                                   789654231
PR005 SK005 Raia                                   986743251
PR006 KK006 Khaila                                 674598321
PR007 TH007 Fany                                   567849321
PR008 SM008 Sasa                                   192837465
PR009 DG009 Fany                                   897645312

9 rows selected.
-- Perawat





-- Kamar
SELECT * FROM KAMAR;

KD_KA NAMA_KAMAR                JENIS_KAMAR
----- ------------------------- --------------------
KM001 Melati                    Kelas 1
KM002 Anggrek                   Kelas 2
KM003 Mawar                     Kelas 3
KM004 Tulip                     Suite
KM005 Almanda                   Deluxe
KM006 Aster                     Executive

6 rows selected.
-- Kamar





-- Pembayaran
SELECT * FROM PEMBAYARAN;

KD_PE KD_PA JUMLAH_PEMBAYARAN
----- ----- -----------------
KB001 00001           5250000
KB002 00002           2750000
KB003 00003           3450000
KB004 00004           1350000
KB005 00005            750000
KB006 00006           4000000
KB007 00007            550000
KB008 00008           3250000
KB009 00009            650000
KB010 00010           6750000

10 rows selected.
-- Pembayaran





-- Obat
SELECT * FROM OBAT;

KD_OB KD_DO KD_PA NAMA_OBAT            JENIS_OBAT
----- ----- ----- -------------------- --------------------
OB001 PD002 00001 Actemra              Penyakit Dalam
OB002 SM008 00002 Alegysal             Mata
OB003 DG009 00003 Diklofenak           Gigi
OB004 TH007 00004 Otozambon            THT
OB005 DU001 00005 Antihistamin         Umum
OB006 SS004 00006 Amitriptyline        Saraf
OB007 DU001 00007 Analgesik            Umum
OB008 KK006 00008 Kortikosteroid       Kulit
OB009 DU001 00009 Antipiretik          Umum
OB010 PD002 00010 Actemra              Penyakit Dalam

10 rows selected.
-- Obat





-- Periksa
SELECT * FROM PERIKSA;

KD_PA KD_DO PENYAKIT                                      TGL_PERIK
----- ----- --------------------------------------------- ---------
00001 PD002 Peradangan Sendi                              08-APR-24
00002 SM008 Alergi Pada Mata                              15-APR-24
00003 DG009 Asam Urat                                     18-APR-24
00004 TH007 Peradangan Telinga                            22-APR-24
00005 DU001 Alergi Pernafasan                             28-APR-24
00006 SS004 Nyeri Saraf                                   07-MAY-24
00007 DU001 Nyeri Otot                                    12-MAY-24
00008 KK006 Lupus Sistemik                                18-MAY-24
00009 DU001 Demam                                         25-MAY-24
00010 PD002 Radang Pembuluh Darah                         29-MAY-24

10 rows selected.
-- Periksa