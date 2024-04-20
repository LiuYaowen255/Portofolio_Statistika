#include <iostream>
#include <cmath>
#include <fstream>
#include <vector>
#include <string>

using namespace std;

float Euclidean (float x[], float y[], int n){
	float hasil = 0;
	for (int i=0;i<n;i++){
		hasil+=pow(x[i]-y[i],2);
	}
	hasil = sqrt (hasil);
	return hasil;
}

int main (){
	
	int data[100];
	int angka;
	vector<int> data_f;
	
	ifstream Miles_morales;
	Miles_morales.open("SeqData.txt");
	
	while (Miles_morales >> angka){
		data_f.push_back(angka);
	}
	Miles_morales.close();
	
	int panjang_data_f = data_f.size();
	int n = 0;
	
	for(int i = 0; i<panjang_data_f;i++){
		data[i]=data_f[i];
		n++;
	}
	
	cout<<"Import Data"<<endl;
	cout<<"______________"<<endl;
	for (int i=0;i<n;i++){
		cout<<data[i]<<" ";
	}
	
	float data_genap[n], data_ganjil[n], data_prima[n];
	int jmlGenap=0, jmlGanjil=0, jmlPrima=0;
	
	for (int i=0;i<n;i++){
		if (data[i]%2==0){
			data_genap[jmlGenap] = data[i];
			jmlGenap++;
		}
		else if (data[i]%2 != 0){
			if(data[i]==2 || data[i]==3 || data[i]==5 || data[i]==7){
				data_prima[jmlPrima]=data[i];
				jmlPrima++;
			}
			else if (data[i]%2==0 || data[i]%3==0 || data[i]%5==0 || data[i]%7==0){
				data_ganjil[jmlGanjil]=data[i];
				jmlGanjil++;
			}
			else { //selain bil prima 2,3,5,7
				data_prima[jmlPrima]=data[i];
				jmlPrima++;
			}
		}
	}
	cout<<endl;
	
	cout<<"Hasil Filter Data"<<endl;
	cout<<"Data Genap : "<<endl;
	for (int i=0;i<jmlGenap;i++){
		cout<<data_genap[i]<<" ";
	}
	cout<<"Data Ganjil : "<<endl;
	for (int i=0;i<jmlGanjil;i++){
		cout<<data_ganjil[i]<<" ";
	}
	cout<<"Data Prima : "<<endl;
	for (int i=0;i<jmlPrima;i++){
		cout<<data_prima[i]<<" ";
	}
	cout<<endl;
	
	//2c
	ofstream UploadTXT;
	UploadTXT.open("DistMatrix.txt");
	
	
	
	float matriks_euclidian [3][3];
	
	// Operasi dengan data yang sama yang akan menghasilkan 0
	matriks_euclidian[0][0] = Euclidian(data_genap, data_genap, jml_gen);
	matriks_euclidian[1][1] = Euclidian(data_ganjil, data_ganjil, jml_gan);
	matriks_euclidian[2][2] = Euclidian(data_prima, data_prima, jml_p);
	
	// Operasi data genap dengan data lainnya
	matriks_euclidian[0][1] = Euclidian(data_genap, data_ganjil, jml_gen);
	matriks_euclidian[0][2] = Euclidian(data_genap, data_prima, jml_gen);
	
	// Operasi data ganjil dengan data lainnya
	matriks_euclidian[1][0] = matriks_euclidian[0][1];
	matriks_euclidian[1][2] = Euclidian(data_ganjil, data_prima, jml_gan);
	
	// Operasi data ganjil dengan data lainnya
	matriks_euclidian[2][0] = matriks_euclidian[0][2];
	matriks_euclidian[2][1] = matriks_euclidian[1][2];
	
	cout<<endl;
		cout<<"2c. Matriks Jarak Euclidean"<<endl;
	cout<<"------------------------------------------------------"<<endl;
	UploadTXT<<"2c. Matriks Jarak Euclidean"<<endl;
	UploadTXT<<"------------------------------------------------------"<<endl;
	for(int i=0; i<3; i++){
		for(int j=0; j<3; j++){
			cout<<matriks_euclidian[i][j]<<"\t\t";
			UploadTXT<<matriks_euclidian[i][j]<<"\t\t";
		}
		cout<<endl;
		UploadTXT<<endl;
	}
	
	cout<<endl;
	cout<<"2d. Pasangan Data Terjauh & Terdekat"<<endl;
	cout<<"------------------------------------------------------"<<endl;
	
	float maksimal = 0, minimal = matriks_euclidian[0][1];
	
	int baris_maks, kolom_maks, baris_min, kolom_min;
	string k_maks, k_min;
	
	for(int i=0; i<3; i++){
		for(int j=0; j<3; j++){
			if(matriks_euclidian[i][j]>maksimal){
				maksimal = matriks_euclidian[i][j];
				baris_maks = i;
				kolom_maks = j;
			}
			else if(matriks_euclidian[i][j]<minimal && i!=j){
				minimal = matriks_euclidian[i][j];
				baris_min = i;
				kolom_min = j;
			}
		}
	}
	
	if(baris_maks==0&&kolom_maks==1){
		k_maks="Bilangan genap & ganjil";
	}
	else if(baris_maks==0&&kolom_maks==2){
		k_maks="Bilangan genap & prima";
	}
	else if(baris_maks==1&&kolom_maks==0){
		k_maks="Bilangan ganjil & genap";
	}
	else if(baris_maks==1&&kolom_maks==2){
		k_maks="Bilangan ganjil & prima";
	}
	else if(baris_maks==2&&kolom_maks==0){
		k_maks="Bilangan prima & genap";
	}
	else if(baris_maks==2&&kolom_maks==1){
		k_maks="Bilangan prima & ganjil";
	}
	
	if(baris_min==0&&kolom_min==1){
		k_min="Bilangan genap & ganjil";
	}
	else if(baris_min==0&&kolom_min==2){
		k_min="Bilangan genap & prima";
	}
	else if(baris_min==1&&kolom_min==0){
		k_min="Bilangan ganjil & genap";
	}
	else if(baris_min==1&&kolom_min==2){
		k_min="Bilangan ganjil & prima";
	}
	else if(baris_min==2&&kolom_min==0){
		k_min="Bilangan prima & genap";
	}
	else if(baris_min==2&&kolom_min==1){
		k_min="Bilangan prima & ganjil";
	}
	cout<<"Terdekat --> "<<k_min<< " dengan jarak "<<minimal<<endl;
	cout<<"Terjauh --> "<<k_maks<< " dengan jarak "<<maksimal<<endl;
	
	}
	
