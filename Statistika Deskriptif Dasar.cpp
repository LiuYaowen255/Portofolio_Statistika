#include <iostream>
#include <cmath>
using namespace std; 
int main()
{
	int i,n,cara; float x[100],rata,s,t,stdev,hipotesis1,z_tabel,z_tabel2,akar,z_hitung,z_hitung_min;
	s=0;
	cout<<"=== Program Menghitung Rata-Rata ==="<<endl;
	cout<<"Masukkan banyak data = "; cin>>n;
	for(i=1;i<=n;i++){
		cout<<"Masukkan data ke-"<<i<<" =";
		cin>>x[i];
		s=s+x[i];
	}
	cout<<"\nBerikut hasil input data : \n\n";
	for(i=1;i<=n;i++){
		cout<<"Hasil data ke-"<<i<<" :"<<x[i]<<endl;
	}
	rata=s/n;
	cout<<"\nRata-Rata dari data tersebut adalah = "<<rata<<endl;
	
	t=0;
	for(i=1;i<=n;i++){
		t=t+((x[i]-rata)*(x[i]-rata));
	}
	stdev=t/(n-1);
	cout<<"\nStandar deviasi dari data tersebut adalah = "<<stdev<<endl;
	
	cout<<"=================================================================="<<endl;
	
	cout<<"Uji Hipotesis Rata-Rata 1 Populasi"<<endl;
	cout<<"================================="<<endl;
	cout<<"Ingin menguji rata-rata 1 populasi dengan one-tailed atau two-tailed?"<<endl;
	cout<<"1. Uji rata-rata 1 populasi dengan one-tailed"<<endl;
	cout<<"2. Uji rata-rata 1 populasi dengan two-tailed"<<endl;
	cout<<"Masukkan pilihan = "; cin>>cara;
	
	switch(cara){
		case 1 : {
			cout<<"H0 : miu <= "; cin>>hipotesis1;
			cout<<"H1 : miu > "; cin>>hipotesis1;
			cout<<"Rata-rata data = "<<rata<<endl;
			cout<<"Varians data = "<<stdev<<endl;
			cout<<"Masukkan nilai Z tabel(alfa) = "; cin>>z_tabel;
			cout<<"================================="<<endl;
			
			z_hitung = (rata-hipotesis1)/(stdev*akar);
			akar = sqrt(n);
			
			if(z_hitung<0){
				z_hitung_min = z_hitung*(-1);
				if(z_hitung_min>z_tabel){
					cout<<"Z hitung = "<<z_hitung_min<<endl;
					cout<<"Z hitung > Z tabel(alfa) yaitu "<<z_hitung_min<<" > "<<z_tabel<<endl;
					cout<<"Kesimpulan : tolak H0";
				}
				else{
					cout<<"Z hitung = "<<z_hitung_min<<endl;
					cout<<"Z hitung < Z tabel(alfa) yaitu "<<z_hitung_min<<" < "<<z_tabel<<endl;
					cout<<"Kesimpulan : gagal tolak H0";
				}	
			}
			else{
				if(z_hitung>z_tabel){
				cout<<"Z hitung = "<<z_hitung<<endl;
				cout<<"Z hitung > Z tabel(alfa) yaitu "<<z_hitung<<" > "<<z_tabel<<endl;
				cout<<"Kesimpulan : tolak H0";
				}
				else{
					cout<<"Z hitung = "<<z_hitung<<endl;
					cout<<"Z hitung < Z tabel(alfa) yaitu "<<z_hitung<<" < "<<z_tabel<<endl;
					cout<<"Kesimpulan : gagal tolak H0";
				}
			}
			break;
		}
		case 2 : {
			cout<<"H0 : miu = "; cin>>hipotesis1;
			cout<<"H1 : miu != "; cin>>hipotesis1;
			cout<<"Rata-rata data = "<<rata<<endl;
			cout<<"Varians data = "<<stdev<<endl;
			cout<<"Masukkan nilai Z tabel(alfa/2) = "; cin>>z_tabel2;
			cout<<"================================="<<endl;
	
			z_hitung = (rata-hipotesis1)/(stdev*akar);
			akar = sqrt(n);
			
			if(z_hitung<0){
				z_hitung_min = z_hitung*(-1);
				if(z_hitung_min>z_tabel2){
					cout<<"Z hitung = "<<z_hitung_min<<endl;
					cout<<"Z hitung > Z tabel(alfa/2) yaitu "<<z_hitung_min<<" > "<<z_tabel2<<endl;
					cout<<"Kesimpulan : tolak H0";
				}
				else{
					cout<<"Z hitung = "<<z_hitung_min<<endl;
					cout<<"Z hitung < Z tabel(alfa/2) yaitu "<<z_hitung_min<<" < "<<z_tabel2<<endl;
					cout<<"Kesimpulan : gagal tolak H0";
				}	
			}
			else{
				if(z_hitung>z_tabel2){
				cout<<"Z hitung = "<<z_hitung<<endl;
				cout<<"Z hitung > Z tabel(alfa/2) yaitu "<<z_hitung<<" > "<<z_tabel2<<endl;
				cout<<"Kesimpulan : tolak H0";
				}
				else{
					cout<<"Z hitung = "<<z_hitung<<endl;
					cout<<"Z hitung < Z tabel(alfa/2) yaitu "<<z_hitung<<" < "<<z_tabel2<<endl;
					cout<<"Kesimpulan : gagal tolak H0";
				}
			}
			break;
		}
		default : {
			cout<<"Salah menginputkan angka pilihan"<<endl;
			break;
		}
	}
	
	return 0;
}
