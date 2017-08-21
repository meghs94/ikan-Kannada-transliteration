#include<stdio.h>
#include<stdlib.h>

int main_array[10000];

//function to map the UTF values to phonetic English letters

void map(int n)
{
switch(n)
{
//CONSONANTS

case 149 : printf("k");
break;

case 150 : printf("kh");
break;

case 151 : printf("g");
break;

case 152 : printf("gh");
break;

case 153 : printf("ng");
break;

case 154 : printf("ch");
break;

case 155 : printf("chh");
break;

case 156 : printf("j");
break;

case 157 : printf("jh");
break;

case 158 : printf("ny");
break;

case 159 : printf("T");
break;

case 160 : printf("Th");
break;

case 161 : printf("D");
break;

case 162 : printf("Dh");
break;

case 163 : printf("N");
break;

case 164 : printf("t");
break;

case 165 : printf("th");
break;

case 166 : printf("d");
break;

case 167 : printf("dh");
break;

case 168 : printf("n");
break;

case 170 : printf("p");
break;

case 171 : printf("ph");
break;

case 172 : printf("b");
break;

case 173 : printf("bh");
break;

case 174 : printf("m");
break;

case 175 : printf("y");
break;

case 176 : printf("r");
break;

case 177 : printf("R");
break;

case 178 : printf("l");
break;

case 179 : printf("L");
break;

case 181 : printf("v");
break;

case 182 : printf("sh");
break;

case 183 : printf("SH");
break;

case 184 : printf("s");
break;

case 185 : printf("h");
break;

//case 222 : printf("%c",L);
//break;

//MAATRA
case 190 : printf("aa");
break;

case 191 : printf("i");
break;

case 192 : printf("ii");
break;

case 193 : printf("u");
break;

case 194 : printf("uu");
break;

case 195 : printf("ru");
break;
case 196 : printf("rru");
break;

case 198 : printf("e");
break;

case 199 : printf("ee");
break;
case 200 : printf("ai");
break;

case 202 : printf("o");
break;

case 203 : printf("oo");
break;

case 204 : printf("au");
break;

case 130 : printf("an");
break;

case 131 : printf("h");
break;

//Swarakshara

case 133 : printf("a");
break;

case 134 : printf("aa");
break;

case 135 : printf("i");
break;

case 136 : printf("ii");
break;

case 137 : printf("u");
break;


case 138 : printf("uu");
break;


case 139 : printf("ru");
break;

case 142 : printf("e");
break;

case 143 : printf("ee");
break;

case 144 : printf("ai");
break;


case 146 : printf("o");
break;

case 147 : printf("oo");
break;

case 148 : printf("au");
break;


}
}

int fileread() //function to read the kannada characters stored in utf-8 format
{

    FILE *fp;
    char ch;
    int c=0,s1,s2,i=0;

    fp=fopen("UTF-8_Input.txt","r");

    if( fp == NULL )
    {
      perror("Error while opening the file.\n");
      exit(0);
    }

    while((ch=fgetc(fp))!=EOF)
    {

        if(ch == 32) //space
            main_array[i++]=1;
        else if(ch == '\n') //newline
            main_array[i++]=2;
        else if(ch == ',')  //comma
            main_array[i++]=3;
        else if(ch == '!')  //exclamation
            main_array[i++]=4;

        else
        {

            ch=fgetc(fp);
            ch=fgetc(fp);
            ch=fgetc(fp);

            ch=fgetc(fp);

            if(ch>=65)
                s1=(ch-55)*16;
            else
                s1=(ch-48)*16;



            ch=fgetc(fp);

            if(ch>=65)
                s2=(ch-55);
            else
                s2=(ch-48);

            main_array[i++]=(s1+s2); //decimal form of 5th and 6th

        }

    }
    return i;
}


int main()
{
    //\u0CAA\u0CC1\u0CB8\u0CCD\u0CA4\u0C95 - PUSTAKA

    int n;

    n=fileread();
    //printf("%d n ",n);
    int i;

    printf("Transliterated Output :\n\n");
    for(i=0;i<n;i++)
    {
        if(main_array[i]==1) //space
        printf(" ");
        else if(main_array[i]==2) //new line
        printf("\n");
        else if(main_array[i]==3) //comma
        printf(",");
        else if(main_array[i]==4) //exclamation
        printf("!");

        if(main_array[i]==205) // virama
        continue;

        if((133<=main_array[i] && main_array[i]<=148) || (190<= main_array[i] && main_array[i]<=204))// aa to au and kaa to kau
        {
        map(main_array[i]);
        }
        if(main_array[i]== 130) //am
        {
        printf("n");
        }
        if(main_array[i]== 131) //aha
        {
        printf("h");
        }
        if(149<=main_array[i] && main_array[i]<=185)
        {
        map(main_array[i]);

        if((149<=main_array[i+1] && main_array[i+1]<=185)|| (main_array[i+1]==0 || main_array[i+1]==1 || main_array[i+1]==2 || main_array[i+1]==3 || main_array[i+1]==4) || main_array[i+1]== 130 || main_array[i+1]== 131 || (133<=main_array[i+1] && main_array[i+1]<=148)) //consonant followed by consonant
        printf("a");
        }

    }

return 0;
}
