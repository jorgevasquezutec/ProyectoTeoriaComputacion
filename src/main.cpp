#include <iostream>
#include <vector>
#include <iostream>
#include <cstdlib>
#include <cctype>
#include <map>
#include <unordered_map>
using namespace std;

//DINAMICO
template<typename K, typename V>
void print_map(std::unordered_map<K,V> const &m)
{
for (auto const& pair: m) {
std::cout << "{" << pair.first << ": " << pair.second << "}\n";
}
}
void imprimir(vector<char>estados){
    for(const auto &i:estados)
        cout<<i<<"  ";
    cout<<endl;
}
vector<char> invertir(vector<char> c){
    vector<char> temp = c;
    for (int i=0;i<c.size();i++)
        temp[i]=c[c.size()-1-i];
    return temp;
}
int buscar(vector<char>a, char valor){
    for(int i =0; i < a.size(); i++){
        if(a[i] == valor)
            return i;
    }
}



vector<char> crear_trans(string w,string x){
    vector<char> tran_estado;
    for (int i=0;i<w.length();i++){
        if(w[i]==x[i]){
            tran_estado.push_back(w[i]);
        }else{
            tran_estado.push_back(w[i]);
            break;
        }
    }
    return tran_estado;
}


vector<char> crear_trans_back(string w,string x){
    vector<char> tran_estado, inv;
    for (int i=0;i<w.length();i++){
        if(w[w.size()-1-i]==x[x.size()-1-i]){
            tran_estado.push_back(w[w.size()-1-i]);
        }else{
            tran_estado.push_back(w[w.size()-1-i]);
            break;
        }
    }
    inv = invertir(tran_estado);
    return inv;

}


vector<char> crear_estados(int cantidad_trans){
    vector<char>estados;
    char sim;
    for(int j = 0; j < cantidad_trans+1;j++){
        sim = 65+j;
        estados.push_back(char(sim));
    }
    return estados;
}



bool automata1(string &w, vector<char>trans, vector<char>estados){
    int pos_estados = 0, pos_trans=0, pos =0;
    bool cadenaRechazada = false;
    while(not cadenaRechazada and pos < w.length()){
        char simbolo = w[pos++];
        if(simbolo == trans[pos_trans]){
            if(pos_estados<estados.size()){
                pos_estados++;
                pos_trans++;
            }
        }
        else
            cadenaRechazada=true;
    }
    if(pos_estados == estados.size()-1)
        return true;
    else
        return false;
}


bool automata2(string&w, vector<char>trans,vector<char>estados){
    unordered_map<string ,string> map_estados;

    for (int i = 0; i<trans.size(); i++ ){
        string valor="";
        for (int l=0;l<=i;l++){
            valor+=trans[l];
        }
        map_estados[valor]=estados[i+1];
    }
    int max_size=trans.size();
    cout<<max_size<<endl;
    string temp="";
    string estado="A";
    for (int j=0; j<w.size(); j++){
        temp = temp+ w[j];
        if(temp.size()>4){
            temp.erase (temp.begin());
        }
        unordered_map<string ,string>::iterator it;
        for(int m=0;m<temp.size();m++){
            it = map_estados.find(temp.substr(m,temp.size()));
            if (it != map_estados.end()){
                break;
            }
        }
        if (it!=map_estados.end()){
            estado=it->second;
        }else{
            estado="A";
        }
    }
    string estado_final;
    estado_final =estado_final + estados[estados.size()-1];

    if(estado == estado_final)
        return true;
    else
        return false;
}

void sep(string &w,string &x){

    cout<<"Cadena w = "<<w<<endl;
    cout<<"Cadena x = "<<x<<endl;
    cout<<endl;

    //AUTOMATA PARA ADELANTE
    cout<<"Separando w de x a partir del inicio:"<<endl;
    vector<char> tran_estado = crear_trans(w,x);
    cout<<"Funciones de transición:  ";
    imprimir(tran_estado);

    vector<char>estados = crear_estados(tran_estado.size());
    cout<<"Número de estados: ";
    imprimir(estados);

    bool aceptacion_de_w = automata1(w,tran_estado,estados);
    bool aceptacion_de_x = automata1(x,tran_estado,estados);
    cout<<"¿La cadena w fue aceptada? :  "<<aceptacion_de_w<<endl<<"¿La cadena x fue aceptada? :  "<<aceptacion_de_x<<endl;
    cout<<endl;
    cout<<endl;


    //AUTOMATA PARA ATRAS
    cout<<"Separando w de x a partir del final: "<<endl;
    vector<char>tran_automata2 = crear_trans_back(w, x);
    cout<<"Funciones de transición: ";
    imprimir(tran_automata2);
    vector<char>estados_automata2 = crear_estados(tran_automata2.size());
    cout<<"Número de estados: ";
    imprimir(estados_automata2);
    bool estado= automata2(w, tran_automata2,estados_automata2);
    cout<<"¿La cadena w fue aceptada? : "<<estado<<endl;
    bool estado_2= automata2(x, tran_automata2,estados_automata2);
    cout<<"¿La cadena x fue aceptada? : "<<estado_2<<endl;

}


int main() {
    /* string w = "11111010011001010101", x = "11111011010010101101";*/

    string w = "111010110100110", x = "101010101010110";

    sep(w,x);
    return 0;
}
