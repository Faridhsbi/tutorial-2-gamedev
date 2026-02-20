# Tutorial 2 

#### Nama	: Muhammad Farid Hasabi
#### NPM	: 2306152512

---
## Part 1: Latihan Playtest

**Apa saja pesan log yang dicetak pada panel Output?**

Terdapat 2 kalimat dicetak pada panel output:
- "Platform initialized": Ketika permainan dimulai
- "Reached objective!" 	: Saat pesawat mencapai pada batas atas platform

**Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?**

Ketika awal running, muncul kalimat "Platform initialized". Kemudian ketika saya menggerakan blok ke area bawah, tidak ada output yang muncul. Namun, ketika saya menggerakan keatas, muncul output "Reached objective!"

**Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?**

Iya, saat pesawat sudah menyentuh objectiveArea, maka akan muncul pesan log “Reached objective!”. Hal tersebut dikarenakan terdapat script didalam ObjectiveArea yang mana jika ada body object pesawat Blueship yang menyentuh objectiveArea, maka akan mengeluarkan suatu pesan log. 

## Part 2: Latihan Memanipulasi Node dan Scene

**Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?**

Untuk menampilkan tekstur atau gambar 2D yang diambil dari direktori assets untuk suatu objek.

**Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?**

RigidBody2D merupakan objek dinamis yang pergerakannya dapat dipengaruhi oleh hukum fisika (seperti gravitasi, massa, dll) 
Sedangkan staticBody2D merupakan objek statis diam sehingga tidak dapat digerakan oleh apapun termasuk hukum fisika.

**Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?**

Dengan mengubah nilai atribut Mass pada RigidBody2D, akan mempengaruhi dalam kalkulasi inersia pada hukum fisika. Namun, khusus pada tutorial-2 kali ini, perubahan tersebut tidak terlalu berasa karena pesawat BlueShip bergerak diatas platform StaticBody2D yang memanipulasi lokasi koordinatnya secara langsung bukan melalui berat dari pesawat itu sendiri.  

**Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?**

Platform seolah-olah akan menjadi suatu dekorasi saja, karena bentuk fisik (Collision) dimatikan sehingga pesawat jadi menembus platform dan tidak bisa menjadi pijakan lagi.

**Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?**

Didalam ViewPort, visualisasi BlueShip akan berubah secara langusng menyesuaikan dengan apa yang kita ubah. Jika Position diubah, maka pesawat akan berpindah ke lokasi yang kita inginkan. Jika Rotation diubah, maka pesawat akan berotasi sesuai dengan sudut yang kita atur. Jika Scale diubah, maka pesawat akan menjadi lebih besar/lebih kecil sesuai dengan scale yang kita ubah. Kemudian, saat game dimulai (run project), perubahan position dan rotation akan diterapkan sebagai titik awal dan menyesuaikan juga perubahan lainnya tergantung transformasi yang kita lakukan. 

**Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?**

Karena Godot menggunakan sistem koordinat relatif pada hirarki node-nya. Nilai Position milik StonePlatform yang terlihat di Inspector adalah jarak posisinya terhadap titik tengah dari parent node-nya (PlatformBlue), bukan posisinya di layar secara global. Oleh karena itu, jika PlatformBlue digeser, visual StonePlatform akan ikut terbawa, meskipun angka Position di Inspectornya tidak berubah.

	
