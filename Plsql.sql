-- Procedure Insert
CREATE OR REPLACE PROCEDURE insert_pasien (
  2    p_kd_pasien CHAR,
  3    p_nama_pasien VARCHAR2,
  4    p_alamat_pasien VARCHAR2,
  5    p_nohp_pasien NUMBER
  6  ) IS
  7    e_dup_val_on_index EXCEPTION;
  8    PRAGMA EXCEPTION_INIT(e_dup_val_on_index, -00001);
  9  BEGIN
 10    INSERT INTO PASIIEN (KD_PASIEN, NAMA_PASIEN, ALAMAT_PASIEN, NOHP_PASIEN)
 11    VALUES (p_kd_pasien, p_nama_pasien, p_alamat_pasien, p_nohp_pasien);
 12  EXCEPTION
 13    WHEN e_dup_val_on_index THEN
 14      DBMS_OUTPUT.PUT_LINE('Error: KD_PASIEN already exists.');
 15  END;
 16  /

Procedure created.



BEGIN
  2    insert_pasien('00011', 'Ridho', 'Pemalang', 0879653124);
  3  END;
  4  /

PL/SQL procedure successfully completed.
-- Procedure Insert





-- Function untuk menghitung total pembayaran pasien menggunakan parameter
CREATE OR REPLACE FUNCTION total_pembayaran_pasien(
  2    p_kd_pasien CHAR
  3  ) RETURN NUMBER IS
  4    v_total NUMBER := 0;
  5  BEGIN
  6    SELECT SUM(JUMLAH_PEMBAYARAN) INTO v_total
  7    FROM PEMBAYARAN
  8    WHERE KD_PASIEN = p_kd_pasien;
  9
 10    RETURN v_total;
 11  END;
 12  /

Function created.

SQL> SELECT total_pembayaran_pasien('00002') FROM DUAL;

TOTAL_PEMBAYARAN_PASIEN('00002')
--------------------------------
                         2750000
-- Function untuk menghitung total pembayaran pasien menggunakan parameter





-- Function Menghitung jumlah total pasien dari tabel pasiien
CREATE OR REPLACE FUNCTION get_total_pasien RETURN NUMBER IS
  2    v_total_pasien NUMBER;
  3  BEGIN
  4    -- Menghitung jumlah total pasien dari tabel PASIIEN
  5    SELECT COUNT(*) INTO v_total_pasien FROM PASIIEN;
  6
  7    -- Mengembalikan jumlah total pasien
  8    RETURN v_total_pasien;
  9  END;
 10  /

Function created.


-- Pengujuan
DECLARE
  2    total_pasien NUMBER;
  3  BEGIN
  4    total_pasien := get_total_pasien;
  5    DBMS_OUTPUT.PUT_LINE('Total Pasien: ' || total_pasien);
  6  END;
  7  /

PL/SQL procedure successfully completed.

SQL> SELECT get_total_pasien AS total_pasien FROM DUAL;

TOTAL_PASIEN
------------
          11
          
-- Function Menghitung jumlah total pasien dari tabel pasiien





-- Trigger untuk Memvalidasi Nomor HP Dokter Sebelum Insert

CREATE OR REPLACE TRIGGER validasi_nohp_dokter
BEFORE INSERT OR UPDATE ON DOKTER
FOR EACH ROW
BEGIN
  IF :NEW.NOHP_DOKTER IS NULL OR :NEW.NOHP_DOKTER < 1000000000 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Nomor HP Dokter tidak valid.');
  END IF;
END;
/



-- Valid
INSERT INTO DOKTER (KD_DOKTER, NAMA_DOKTER, NOHP_DOKTER, SPESIALIS) 
VALUES ('D0001', 'Dr. A', 1234567890, 'Umum');




-- Tidak Valid
SQL> INSERT INTO DOKTER (KD_DOKTER, NAMA_DOKTER, NOHP_DOKTER, SPESIALIS)
  2  VALUES ('D0002', 'Dr. B', 12345, 'Spesialis');
INSERT INTO DOKTER (KD_DOKTER, NAMA_DOKTER, NOHP_DOKTER, SPESIALIS)
            *
ERROR at line 1:
ORA-20001: Nomor HP Dokter tidak valid.
ORA-06512: at "SYSTEM.VALIDASI_NOHP_DOKTER", line 3
ORA-04088: error during execution of trigger 'SYSTEM.VALIDASI_NOHP_DOKTER'

-- Trigger untuk Memvalidasi Nomor HP Dokter Sebelum Insert





-- Trigger untuk Otomatis Mengisi Tanggal Pemeriksaan ke Sistem Saat Insert 


CREATE OR REPLACE TRIGGER auto_set_tgl_periksa
  2  BEFORE INSERT ON PERIKSA
  3  FOR EACH ROW
  4  BEGIN
  5    :NEW.TGL_PERIKSA := SYSDATE;
  6  END;
  7  /

Trigger created.

-- Mencoba memasukan tanpa TGL_PERIKSA
INSERT INTO PERIKSA (KD_PASIEN, KD_DOKTER, PENYAKIT)
  2  VALUES ('00011', 'DU001', 'Flu');

1 row created.


-- Mengecek yang tadi di masukan sesuai tanggal insert
SELECT * FROM PERIKSA WHERE KD_PASIEN = '00011' AND KD_DOKTER = 'DU001';

KD_PA KD_DO PENYAKIT                                      TGL_PERIK
----- ----- --------------------------------------------- ---------
00011 DU001 Flu


-- Trigger untuk Otomatis Mengisi Tanggal Pemeriksaan ke Sistem Saat Insert 





-- Procedure untuk kamar
CREATE OR REPLACE PROCEDURE update_kamar(
  2    p_kd_kamar CHAR,
  3    p_nama_kamar VARCHAR2,
  4    p_jenis_kamar VARCHAR2
  5  ) IS
  6  BEGIN
  7    UPDATE KAMAR
  8    SET NAMA_KAMAR = p_nama_kamar, JENIS_KAMAR = p_jenis_kamar
  9    WHERE KD_KAMAR = p_kd_kamar;
 10  END;
 11  /

Procedure created.

-- coba update kamar
BEGIN
  2    update_kamar('KM001', 'Rafflesia ', 'Kelas 1');
  3  END;
  4  /

PL/SQL procedure successfully completed.

SQL> SELECT * FROM KAMAR WHERE KD_KAMAR = 'KM001';

KD_KA NAMA_KAMAR                JENIS_KAMAR
----- ------------------------- --------------------
KM001 Rafflesia                 Kelas 1

-- Procedure untuk kamar



-- Function dengan parameter