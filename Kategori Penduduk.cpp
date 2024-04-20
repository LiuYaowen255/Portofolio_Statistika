#include <iostream>

using namespace std; 

int main ()
{
	int umur, a, b, Biaya, x, y;
	cout<<"\nMasukkan Umur Anda = ";cin>>umur;
	if (umur>=18){
		cout<<"Masukkan Status Bekerja :"<<endl;
		cout<<"1. Sudah Bekerja"<<endl;
		cout<<"2. Belum Bekerja"<<endl;
		cin>>x;
		
		switch(x){
			case 1 : {
				cout<<"Status Bekerja : Sudah Bekerja"<<endl;
				cout<<"Masukkan Pendapatan Perbulan : Rp.";cin>>a;
				cout<<"Masukkan Jumlah Tanggungan : ";cin>>b;
				Biaya = a/b;
				cout<<endl;
				cout<<"Biaya Hidup : Rp."<<Biaya<<endl;
				
				if (Biaya<=300000){
					cout<<"Kategori : Penduduk Miskin"<<endl;
					
					cout<<"_______________selesai_______________"<<endl;
				}
				else {
					cout<<"Kategori : Bukan Penduduk Miskin"<<endl;
					
					cout<<"_______________selesai_______________"<<endl;
				}
				
			break;
			}
			default :
				cout<<"Status Bekerja : Belum Bekerja"<<endl;
				cout<<"Kategori : Penduduk Miskin"<<endl;
					
				cout<<"_______________selesai_______________"<<endl;
				
		}
	}
	else {
		cout<<"Masukkan Status Sekolah :"<<endl;
		cout<<"1. Masih Sekolah"<<endl;
		cout<<"2. Tidak Sekolah"<<endl;
		cin>>y;
		
		switch (y){
			case 1 : {
				cout<<"Status Sekolah : Masih Sekolah"<<endl;
				cout<<"Kategori : Bukan Penduduk Miskin"<<endl;
					
				cout<<"_______________selesai_______________"<<endl;
				break;
			}
			default :
				cout<<"Status Sekolah : Tidak Sekolah"<<endl;
				cout<<"Kategori : Penduduk Miskin"<<endl;
					
				cout<<"_______________selesai_______________"<<endl;
				break;
		}
	}
	
	
	return 0;
}


