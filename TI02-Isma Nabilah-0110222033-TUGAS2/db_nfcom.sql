use db_nfcom;

SELECT * FROM kategori INNER JOIN materi ON kategori.id = materi.kategori_id;

SELECT * FROM kategori INNER JOIN materi ON kategori.id = materi.id INNER JOIN pengajar ON materi.id = pengajar.id INNER JOIN peserta ON pengajar.id = peserta.id INNER JOIN penjadwalan_kelas ON peserta.id = penjadwalan_kelas.id;

SELECT * FROM kategori INNER JOIN materi ON kategori.id = materi.kategori_id INNER JOIN pengajar ON materi.kode = pengajar.id INNER JOIN peserta ON pengajar.nip = peserta.id INNER JOIN penjadwalan_kelas ON peserta.id = penjadwalan_kelas.kode_kelas;

SELECT * FROM kategori AS k INNER JOIN materi AS m ON k.id = m.kategori_id INNER JOIN pengajar AS t ON m.id = t.materi_id INNER JOIN peserta AS s ON t.id = s.materi_id INNER JOIN penjadwalan_kelas AS pk ON s.materi_id = pk.id;
