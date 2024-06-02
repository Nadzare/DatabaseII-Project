DESC PASIEN
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_PASIEN                                 NOT NULL CHAR(5)
 NAMA_PASIEN                               NOT NULL VARCHAR2(35)
 ALAMAT_PASIEN                             NOT NULL VARCHAR2(35)
 NOHP_PASIEN                               NOT NULL NUMBER

DESC DOKTER
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_DOKTER                                 NOT NULL CHAR(5)
 NAMA_DOKTER                               NOT NULL VARCHAR2(35)
 NOHP_DOKTER                               NOT NULL NUMBER
 SPESIALIS                                 NOT NULL VARCHAR2(35)

DESC PERAWAT
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_PERAWAT                                NOT NULL CHAR(5)
 KD_DOKTER                                 NOT NULL CHAR(5)
 NAMA_PERAWAT                              NOT NULL VARCHAR2(35)
 NOHP_PERAWAT                              NOT NULL NUMBER

 DESC KAMAR
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_KAMAR                                  NOT NULL CHAR(5)
 NAMA_KAMAR                                NOT NULL VARCHAR2(25)
 JENIS_KAMAR                               NOT NULL VARCHAR2(20)

DESC PEMBAYARAN
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_PEMBAYARAN                             NOT NULL CHAR(5)
 KD_PASIEN                                 NOT NULL CHAR(5)
 JUMLAH_PEMBAYARAN                         NOT NULL NUMBER

 DESC OBAT
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_OBAT                                   NOT NULL CHAR(5)
 KD_DOKTER                                 NOT NULL CHAR(5)
 KD_PASIEN                                 NOT NULL CHAR(5)
 NAMA_OBAT                                 NOT NULL VARCHAR2(20)
 JENIS_OBAT                                NOT NULL VARCHAR2(20)
 HARGA_OBAT                                NOT NULL NUMBER

  DESC PERIKSA
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KD_PASIEN                                 NOT NULL CHAR(5)
 KD_DOKTER                                 NOT NULL CHAR(5)
 PENYAKIT                                  NOT NULL VARCHAR2(25)
 TGL_PERIKASA                              NOT NULL DATE