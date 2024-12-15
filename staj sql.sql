/*use hastanedb*/
/*
create procedure sp_dogumyerhastalar @sehiri nvarchar(50)
as 
begin
	select TC,hastaAd,hastaSoyad,DATEDIFF(YEAR,hastaDogumTarih,'07-24-2023') as hastaYasi,
		case
		when hastaCinsiyet='Bay' then 'Erkek'
		when hastaCinsiyet='Bayan' then 'Kadýn'
		else hastaCinsiyet
		end as hasta_cinsiyet
	from hastalar
	where hastaDogumyer=@sehiri
end

exec sp_dogumyerhastalar 'Giresun'
*/
/* 2.soru 
begin transaction
begin try
	DELETE FROM muayeneler where randevuID in (SELECT RandevuID FROM randevular where doktorID = '2');
	DELETE FROM randevular where doktorID = '2'
	DELETE FROM doktorlar where doktorId = '2';
commit transaction
end try
begin catch
print 'Doktor kaydý silinemedi'
rollback transaction;
end catch
*/

/* 3.soru
create procedure sp_klinikmaasgetir @klinikAdi nvarchar(100)
as
begin 
select MAX(d.doktorMaas) as enYuksekMaas, AVG(d.doktorMaas) as ortalamaMaas from doktorlar d
inner join klinikler k on k.klinikID=d.klinikID
where k.klinikAdi=@klinikAdi
end
declare @klinikenyuksekmaas decimal(10,2), @klinikortalamamaas decimal(10,2)
exec [sp_klinikmaasgetir] 'Çocuk Saðlýðý Ve Hastalýklarý', @enyuksekmaas=@klinikenyuksekmaas output,
@ortalamamaas=@klinikortalamamaas output
select 'Çocuk Saðlýðý Ve Hastalýklarý' as KlinikAdi, @klinikenyuksekmaas as KlinikEnYuksekMaas,
@klinikortalamamaas as KlinikOrtalamaMaas
*/

/* 4. soru */
/* A þýkký
select k.klinikAdi,COUNT(*) as randevu_sayisi from randevular r
inner join klinikler k on k.klinikID=r.klinikID
where r.tarih between '12-01-2022' and '12-31-2022'
group by k.klinikAdi
*/
/* B þýkký
select d.doktorAd,d.doktorSoyad,k.klinikAdi,COUNT(r.randevuID) as RandevuSayisi from randevular r
inner join klinikler k on k.klinikID=r.klinikID 
inner join doktorlar d on d.doktorID=r.doktorID
group by d.doktorAd,d.doktorSoyad,k.klinikAdi
having COUNT(r.randevuID)>=2
*/
/* C þýkký
select h.TC,SUM(i.ilacFiyat) as IlacToplamTutar from randevular r
inner join hastalar h on h.TC=r.TC
inner join muayeneler m on m.randevuID=r.randevuID
inner join ilaclar i on i.ilacID=m.ilacID
group by h.TC
*/
/* D þýkký
select hastaAd,COALESCE(hastaCeptel,hastaEposta,TC) as iletisimBilgisi from hastalar;
*/
/* E þýkký
select ilacFirma,sum(ilacStok) from ilaclar 
where ilacAd like 'TABLET'
group by ilacFirma
having SUM(ilacStok)>50
*/