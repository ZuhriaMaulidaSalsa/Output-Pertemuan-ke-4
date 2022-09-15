/* membuat tabel */
CREATE TABLE mahasiswa (
id_mhs INT,
id_fakultas INT,
nrp VARCHAR(15),
nama_mhs VARCHAR(25),
alamat VARCHAR(30),
PRIMARY KEY (id_mhs)
);

CREATE TABLE fakultas (
id_fakultas INT,
nama_fakultas VARCHAR(25),
ket VARCHAR(12),
PRIMARY KEY (id_fakultas)
); 

/* insert data ke tabel */
INSERT INTO mahasiswa(id_mhs,id_fakultas,nrp,nama_mhs,alamat)
VALUES
(1,2,100,'Jisoo','Surabaya'),
(2,4,101,'Billie Eilish','Nganjuk'),
(3,1,102,'Lisa','Jakarta'),
(4,7,103,'Jennie','Solo'),
(5,6,104,'Irene','Semarang'),
(6,5,105,'Joy','Medan'),
(7,3,106,'Wendy','Yogyakarta'),
(8,1,107,'Yoona','Surabaya'),
(9,4,108,'Chanyeol','Bandung'),
(10,7,109,'Jaemin','Malang');


INSERT INTO fakultas(id_fakultas,nama_fakultas,ket)
VALUES
(1,'Fakultas Hukum','Aktif'),
(2,'Fakultas Pertanian','Aktif'),
(3,'Fakultas Ekonomi','Aktif'),
(4,'Fakultas Teknik','Aktif'),
(5,'FISIB','Aktif'),
(6,'FIP','Aktif'),
(7,'FKIs','Aktif');


/* menampilkan data dlm tabel*/
SELECT * FROM mahasiswa


/*update data dlm tabel*/
UPDATE mahasiswa
SET alamat='Gresik'
WHERE id_mhs= 1


/* menghapus data dlm tabel */
DELETE FROM mahasiswa
WHERE id_mhs= 1


/* menghapus tabel */
DROP TABLE mahasiwa


/* menggabungkan tabel */
SELECT * FROM mahasiswa
INNER JOIN fakultas
ON mahasiswa.id_fakultas = fakultas.id_fakultas; 
