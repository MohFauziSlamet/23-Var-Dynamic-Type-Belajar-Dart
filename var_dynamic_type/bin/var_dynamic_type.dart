void main(List<String> arguments) {
  print('Hello world:!');

  dynamic mydynamic;

  // mydynamic = 'hello'; // pertama
  // mydynamic = 12;      // kedua
  mydynamic = person();

  // ketika di isi dengan mydynamic. (ditambah tanda titik), methode name tidak dapat di deteksi dengan si dynamicnya
  // cara nya dengan kita berihatu bahwa mydynamic adalah person , dengan penambhan methode as atau juga bisa dengan
  // if yang diberi is

  // print((mydynamic as person).name); // ketiga

  // tanpa diberi as pun tidak akan error , dengan syarat kita sudah yakin bahwa methode yang dipasang benar2 ada
  // print(mydynamic.name); // keempat
  // jika methode .name tidak ada , pada output akan muncul error. namun pada teks editor tidak akan tanda error

  // dengan if dan is
  if (mydynamic is person) {
    print(mydynamic
        .name); // pada methode mydynamic dapat disisi langsung dengan .name
  } else {
    print('dia bukan objek poerson');
  }
}

//-----------------------------------------------------------------------------------------------------
// type var

class person {
  String name = ' no name';
}

/*
dynamic
semisal kita mempunyai sebuah variabel/reference yang dipasang dengan type data dynamic, artinya variabel
tersbut dapat diisi dengan type data apapun.
misal
 mydynamic = 'hello'; // perintah pertama

 jika diprin akan muncul output hello

 mydynamic = 12; // perintah kedua

 jika diprin lagi, maka outputnya bukan hello lagi, melainkan outputnya adalah 12.

 hal ini dikarenakan type dynamic dapat disisi dengan type data apapun, meskipun di pertama kali penggunaan diisi
 dengan type string, namun tetap bisa diisi dengan type int pada penggunaan kedua.
 jadi type dynamic type nya tidak selalu stabil.dikarena dynamic dapat diisi apapun , dia tidak dapat mendeteksi
 ada methode apa aja pada suatu objek. misal nya pada suatu class . 

kesimpulannya 
dynammic artinya variabel kita yang dipasang dengan dynamic dapat menunjuk pada objek apapun. dengan 
memperhatikan poin poin diatas. 

---------------------------------------------------------------------------------------------------------------------
Type var
artinya ini memungkinkan variabel/reference/nickname/pointer kita dapat menunjuk pada objek apapun 
(type apapun, bisa class juga), hanya satu kali pada pertama penggunanaan. selanjutnya type data berikutnya
akan mengikut type data yang pertama tadi.
misal

var myvar = 'hello';

jika diprin akan menampilkan hello

jika diisi lagi dengan type data lain , akan error. misal kita isi

var myvar =12;

jika diprin akan menimbulkan error . karena var sudah bertype data string.

jadi hanya pertma kali saja kita bebas memlilih data apapun yang ingin kita masukan . selanjutnya type datanya
akan sama dengan yang kita inputkan pertama kali.

pada type data var , ada hal lain yang harus WAJIB DIPAHAMI.

misal 

jika kita mengiinisialisasi sebuah variabel dan tidak diberikan nilai langsung, 
maka secara otomatis type var akan menjadi type dynamic. meskipun pada teks editor tertulis var

var myvar; // tidak diberi nilai langsung, maka secara otomatis typenya menjadi dynamic

karena type nya dynamic maka , si var dapat di isi apapun berulang kali, misal

var myvar ; 
myvar = 'hello';
jika diprint akan menampilkan hello

terus kita ubah lagi
myVar = 12';
jika di print akan menampilkan angka 12


loh kog bisa?? kan var??

karena si type var sudah menjadi dynamic. meskipun bertuliskan var.



kesimpulan nya, 
kapan kita harus memakai dynamic ???
saya pakai dynamic kalau variabel saya ada kemungkinan diisi apapun.

kapan kita harus pakai var???
kalo saya tidak tau diawalnya itu datanya apa isi nya, tapi berikut berikutnya datanya sudah pasti.
karena si var di awal aja bebas isinya, selanjutnay mengikuti. 

var juga bisa di masukan dengan tpye class.

var myVar = person();

print(myVar.name);   
methode name ini akan langsung terbaca pada myVar
berbeda dengan dynamic, yang tidak bisa membaca ada methode apa aja di myVar
jadi tidak perlu menggunakan is as maupun if untuk tau bahwa myVar adalah objek person()

 */
