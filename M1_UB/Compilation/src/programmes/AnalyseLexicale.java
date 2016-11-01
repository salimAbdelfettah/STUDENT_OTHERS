package programmes;

import java.util.ArrayList;

import interfaces.Principale;

public class AnalyseLexicale {
	public static ArrayList<Object[]> tokens=new ArrayList<Object[]>();
	public static ArrayList<Object[]> errors=new ArrayList<Object[]>();
	private static int[][] table=
		{
			{1,2,7,8,11,13,15,17,21,21,19,20,22,24,25,26,26},//S0
			{1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S1
			{6,2,3,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S2
			{-1,4,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S3
			{6,4,5,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S4
			{-1,5,5,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S5
			{6,6,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S6
			{-1,4,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S7
			{9,9,9,-1,9,9,9,9,9,9,9,9,9,9,9,9,-1},//S8
			{-1,-1,-1,10,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S9
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S10
			{11,11,11,11,12,11,11,11,11,11,11,11,11,11,11,11,-1},//S11
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S12
			{-1,-1,-1,-1,-1,14,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S13
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S14
			{-1,-1,-1,-1,-1,-1,16,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S15
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S16
			{-1,-1,-1,-1,-1,-1,-1,-1,18,-1,-1,-1,-1,-1,-1,-1,-1},//S17
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S18
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S19
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,23,-1,-1,-1,-1,-1},//S20
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,23,-1,-1,-1,-1,-1},//S21
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,23,-1,-1,-1,-1,-1},//S22
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S23
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S24
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},//S25
			{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}//S26
		};
	private static String[] mot_cle={
		"int","long","float","double","char","String","struct",
		"void","if","else","for","while","switch","case","break"
		,"continue","goto","include","main","return","default"
		};
	
	private static int get_code(char c){
		if (((c>64)&&(c<91))||((c>96)&&(c<123))){
			return 0;// lettres
		}else if ((c>47)&&(c<58)){
			return 1;// chifffres
		}else if (c==46){
			return 2;// .
		}else if (c==39){
			return 3;// '
		}else if (c==34){
			return 4;// "
		}else if (c==38){
			return 5;// &
		}else if (c==124){
			return 6;// |
		}else if (c==45){
			return 7;// -
		}else if ((c==42)||(c==43)||(c==47)){
			return 10;// + - /
		}else if (c==61){
			return 11;// =
		}else if (c==60){
			return 8;// <
		}else if (c==62){
			return 9;// >
		}else if (c==33){
			return 12;
		}else if ((c==44)||(c==58)||(c==59)||(c==40)||(c==41)||(c==91)||(c==93)||(c==123)||(c==125)){
			return 13;// separateurs , : ; { } [ ] ( ) { }
		}else if(c==35){
			return 14;// #
		}else if (c==32){
			return 15;// espace
		}else if (c==10){
			return 16;// retour chariot
		}else{
			return -1;
		}
	}
	
	private static boolean isMotReserve(String s){
		boolean t=false;
		int i=0;
		while ((!t)&&(i<mot_cle.length)){
			if(s.equals(mot_cle[i])){
				t=true;
			}else{
				i++;
			}
		}
		return t;
	}
	
	private static void ajout_tok(ArrayList<Object[]> a,String s,int x,int y,int pd,int pf){
		Object[] O={s,x,y,pd,pf};
		a.add(O);
		
	}
	
	private static void ajout_err(ArrayList<Object[]> a,int te,String s,int x,int y,int p){
		Object[] O={te,s,x,y,p};
		a.add(O);
		Principale.nb_err++;
	}
	
	private static void ajout_err(ArrayList<Object[]> a,char c,int x,int y,int p){
		Object[] O={0,c,x,y,p};
		a.add(O);
		Principale.nb_err++;
	}
	
	public static void analyser(){
		String text=Principale.ta.getText();
		int l=text.length();
		int pos=0;int posd=0; int posx=1; int posy=1;
		int etat; String token;
		int code;
		while (pos<l){
			posd=pos;
			etat=0;
			token="";
			code=get_code(text.charAt(pos));
			while ((pos<l)&&(code!=-1)&&(table[etat][code]!=-1)){
				etat=table[etat][code];
				token=token+text.charAt(pos);
					if(text.charAt(pos)=='\n'){
						posx=1;
						posy++;
					}else{
						posx++;
					}
				pos++;
				if(pos<l)
				code=get_code(text.charAt(pos));
			}
			
			// pour les cas ou 2 etats donne un meme resultat
			if(etat==4) etat=3;
			if(etat==16) etat=14;
			if(etat==23) etat=21;
			switch (etat){
			case 0:ajout_err(errors,text.charAt(pos),posx,posy,pos);posx++;pos++;break; //ajouter à la table des erreurs
			case 1:
				if(isMotReserve(token))
					ajout_tok(tokens,token,posx,posy,posd,pos-1);
				else
					ajout_tok(tokens,"id",posx,posy,posd,pos-1);
				;break;
			case 2:ajout_tok(tokens,"entier",posx,posy,posd,pos-1);break;
			case 3:ajout_tok(tokens,"reel",posx,posy,posd,pos-1);break;
			case 5:ajout_err(errors,2,token,posx,posy,pos-1);break;
			case 6:ajout_err(errors,1,token,posx,posy,pos-1);break;
			case 7:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 8:ajout_err(errors,3,token,posx,posy,pos-1);break;
			case 9:ajout_err(errors,3,token,posx,posy,pos-1);break;
			case 10:ajout_tok(tokens,"caractere",posx,posy,posd,pos-1);break;
			case 11:ajout_err(errors,4,token,posx,posy,pos-1);break;
			case 12:ajout_tok(tokens,"chaine",posx,posy,posd,pos-1);break;
			case 13:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 14:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 15:ajout_err(errors,5,token,posx,posy,pos-1);break;
			case 17:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 18:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 19:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 20:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 21:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 22:ajout_err(errors,5,token,posx,posy,pos-1);break;
			case 24:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			case 25:ajout_tok(tokens,token,posx,posy,posd,pos-1);break;
			//pour l'etat 26 on fait rien
			}
		}
	}

}
