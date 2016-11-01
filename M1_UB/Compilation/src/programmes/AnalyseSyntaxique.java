package programmes;

import java.util.ArrayList;

public class AnalyseSyntaxique {
	public static int i=0;public static int err;
	public static ArrayList<Object[]> code;
	
	public static String s(Object[] O){
		 return O[0].toString();
	}
	
	static int OPA(){
		if((s(code.get(i)).toString().compareToIgnoreCase("+") !=0)&& (s(code.get(i)).compareToIgnoreCase("-") !=0)&&(s(code.get(i)).compareToIgnoreCase("*") !=0)&& (s(code.get(i)).compareToIgnoreCase("/") !=0))
			return 1;
		else{
			i++;
			return -1;
		}
	}
	
	static int OPC(){
		if((s(code.get(i)).compareToIgnoreCase("<") !=0)&& (s(code.get(i)).compareToIgnoreCase(">") !=0)&&(s(code.get(i)).compareToIgnoreCase("<=") !=0)&& (s(code.get(i)).compareToIgnoreCase(">=") !=0)&& (s(code.get(i)).compareToIgnoreCase("!=") !=0)&& (s(code.get(i)).compareToIgnoreCase("==") !=0))
			return 2;
		else{
			i++;
			return -1;
		}
	}
	
	static int STRD(){
		if(s(code.get(i)).equals("->")){
			i++;
			if(s(code.get(i)).equals("id")){
				i++;
				err=STRD();
				return err;
			}else
				return 3;
		}else
			return -1;
	}
	
	static int ID(){
		if(s(code.get(i)).equals("id")){
			i++;
			err=STRD();
			return err;
		}else
			return 3;
	}
	
	static int VAR(){
		if((s(code.get(i)).compareToIgnoreCase("entier") !=0)&& (s(code.get(i)).compareToIgnoreCase("chaine") !=0)&&(s(code.get(i)).compareToIgnoreCase("reel") !=0)&& (s(code.get(i)).compareToIgnoreCase("caractere") !=0)){
			err=ID();
			return err;
		}
		else{
			i++;
			return -1;
		}
	}
	
	static int LIB(){
		if(s(code.get(i)).equals(".")){
			i++;
			if(s(code.get(i)).equals("id")){
				i++;
				err=LIB();
				return err;
			}else
				return 3;
		}else
			return -1;
	}
	
	static int E(){
		err=OPA();
		if(err==-1){
			err=EA();
			return err;
		}else
			return -1;
	}
	
	static int EA(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=VAR();
			if(err==-1){
				err=E();
				if(err==-1){
					if(s(code.get(i)).equals(")")){
						i++;
						return -1;
					}else
						return 15;
				}else
					return err;
			}else
				return err;
		}else{
			err=VAR();
			if(err==-1){
				err=E();
				return err;
			}else
				return err;
		}
	}
	
	static int INIT(){
		if(s(code.get(i)).equals("=")){
			i++;
			err=EA();
			return err;
		}else
			return -1;
	}
	
	static int T12(){
		if(s(code.get(i)).equals(",")){
			i++;
			err=TEA();
			return err;
		}else
			return -1;
	}
	
	static int TEA(){
		err=EA();
		if(err==-1){
			err=T12();
			return err;
		}else
			return err;
	}
	
	static int T11(){
		err=TEA();
		if(err==-1){
			if(s(code.get(i)).equals("}")){
				i++;
				return -1;
			}else
				return 9;
		}else{
			if(s(code.get(i)).equals("}")){
				i++;
				return -1;
			}else
				return 9;
		}
			
	}
	
	static int T1(){
		if(s(code.get(i)).equals("{")){
			i++;
			err=T11();
			return err;
		}else
			return 8;
	}
	
	static int INIT1(){
		if(s(code.get(i)).equals("=")){
			i++;
			err=T1();
			return err;
		}else
			return -1;
	}
	
	static int T22(){
		if(s(code.get(i)).equals(",")){
			i++;
			err=T2();
			return err;
		}else
			return -1;
	}
	
	static int T2(){
		err=T1();
		if(err==-1){
			err=T22();
			return err;
		}else
			return err;
	}
	
	static int T21(){
		if(s(code.get(i)).equals("}")){
			i++;
			return -1;
		}else{
			err=T2();
			if(err==-1){
				if(s(code.get(i)).equals("}")){
					i++;
					return -1;
				}else
					return 9;
			}else
				return err;
		}
	}
	
	static int INIT2(){
		if(s(code.get(i)).equals("=")){
			i++;
			if(s(code.get(i)).equals("{")){
				i++;
				err=T21();
				return err;
			}else
				return 8;
		}else
			return 26;
	}
	
	static int TAB2(){
		if(s(code.get(i)).equals("[")){
			i++;
			if(s(code.get(i)).equals("entier")){
				i++;
				if(s(code.get(i)).equals("]")){
					i++;
					err=INIT2();
					return err;
				}else
					return 13;
			}else
				return 12;
		}else{
			err=INIT1();
			return err;
		}
	}
	
	static int TAB(){
		if(s(code.get(i)).equals("[")){
			i++;
			if(s(code.get(i)).equals("entier")){
				i++;
				if(s(code.get(i)).equals("]")){
					i++;
					err=TAB2();
					return err;
				}else
					return 13;
			}else
				return 12;
		}else{
			err=INIT();
			return err;
		}
	}
	
	static int SDEC(){
		err=TYPE();
		if(err==-1){
			if(s(code.get(i)).equals("id")){
				i++;
				err=TAB();
				if(err==-1){
					if(s(code.get(i)).equals(";")){
						i++;
						err=SDEC();
						return err;
					}else
						return 10;
				}else
					return err;
			}else
				return 3;
		}else
			return -1;
	}
	
	static int STRUCT(){
		if(s(code.get(i)).equals("struct")){
			i++;
			if(s(code.get(i)).equals("id")){
				i++;
				if(s(code.get(i)).equals("{")){
					i++;
					err=SDEC();
					if(err==-1){
						if(s(code.get(i)).equals("}")){
							i++;
							if(s(code.get(i)).equals("id")){
								i++;
								if(s(code.get(i)).equals(";")){
									i++;
									return -1;
								}else
									return 10;
							}else
								return 3;
						}else
							return 9;
					}else
						return err;
				}else{
					return 8;
				}
			}else
				return 3;
		}else
			return 30;
	}
	
	static int PARAM(){
		if(s(code.get(i)).equals(",")){
			i++;
			err=PARAMS();
			return err;
		}else
			return -1;
	}
	
	static int VE(){
		if(s(code.get(i)).equals("int")||s(code.get(i)).equals("long")){
			i++;
			return -1;
		}else
			return -1;
	}
	
	static int TYPE(){
		if(s(code.get(i)).equals("int")||s(code.get(i)).equals("long")||s(code.get(i)).equals("float")||s(code.get(i)).equals("double")||s(code.get(i)).equals("char")||s(code.get(i)).equals("String")){
			i++;
			return -1;
		}else
			return 17;
	}
	
	static int OPL(){
		if(s(code.get(i)).equals("&&")||s(code.get(i)).equals("||")){
			i++;
			return -1;
		}else
			return 18;
	}
	
	static int PARAMS(){
		err=TYPE();
		if(err==-1){
			if(s(code.get(i)).equals("id")){
				i++;
				err=PARAM();
				return err;
			}else
				return 3;
		}else
			return err;
	}
	
	static int P(){
		if(s(code.get(i)).equals(")")){
			i++;
			return -1;
		}else{
			err=PARAMS();
			if(err==-1){
				if(s(code.get(i)).equals(")")){
					i++;
					return -1;
				}else
					return 15;
			}else
				return err;
		}
	}
	
	static int SUITE(){
		err=CORPS();
		return -1;
	}
	
	static int AFFECT(){
		err=EA();
		if(err==-1){
			return -1;
		}else{
			err=T1();
			if(err==-1){
				return -1;
			}else{
				err=T2();
				return err;
			}
		}
	}
	
	static int OPS(){
		if(s(code.get(i)).equals("=")){
			i++;
			err=EA();
			return err;
		}else{
			if(s(code.get(i)).equals("+")){
				i++;
				if(s(code.get(i)).equals("+")){
					i++;
					return -1;
				}else
					return 24;
			}else{
				if(s(code.get(i)).equals("-")){
					i++;
					if(s(code.get(i)).equals("-")){
						i++;
						return -1;
					}else
						return 25;
				}else
					return 23;
			}
		}
	}
	
	static int OP(){
		if(s(code.get(i)).equals("=")){
			i++;
			err=AFFECT();
			return err;
		}else{
			if(s(code.get(i)).equals("+")){
				i++;
				if(s(code.get(i)).equals("+")){
					i++;
					return -1;
				}else
					return 24;
			}else{
				if(s(code.get(i)).equals("-")){
					i++;
					if(s(code.get(i)).equals("-")){
						i++;
						return -1;
					}else
						return 25;
				}else
					return 23;
			}
		}
	}
	
	static int INST(){
		if(s(code.get(i)).equals("return")){
			i++;
			err=EA();
			if(err==-1){
				if(s(code.get(i)).equals(";")){
					i++;
					return -1;
				}else
					return 21;
			}else
				return err;
		}else{
			err=ID();
			if(err==-1){
				err=OP();
				if(err==-1){
					if(s(code.get(i)).equals(";")){
						i++;
						return -1;
					}else
						return 21;
				}else
					return err;
			}else
				return err;
		}
	}
	
	static int CASE(){
		if(s(code.get(i)).equals(":")){
			i++;
			err=CORPS();
			if(err==-1){
				if(s(code.get(i)).equals("break")){
					i++;
					if(s(code.get(i)).equals(";")){
						i++;
						return -1;
					}else
						return 21;
				}else
					return 28;
			}else
				return err;
		}else
			return 20;
	}
	
	static int CASES(){
		if(s(code.get(i)).equals("case")){
			i++;
			err=VAR();
			if(err==-1){
				err=CASE();
				if(err==-1){
					err=CASES();
					return err;
				}else
					return err;
			}else
				return err;
		}else{
			if(s(code.get(i)).equals("default")){
				i++;
				err=CASE();
				return err;
			}else
				return -1;
		}
	}
	
	static int SWITCH(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=ID();
			if(err==-1){
				if(s(code.get(i)).equals(")")){
					i++;
					if(s(code.get(i)).equals("{")){
						i++;
						err=CASES();
						if(err==-1){
							if(s(code.get(i)).equals("}")){
								i++;
								return -1;
							}else
								return 9;
						}else
							return err;
					}else
						return 8;
				}else
					return 15;
			}else
				return err;
		}else
			return 14;
	}
	
	static int CD(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=COND();
			if(err==-1){
				if(s(code.get(i)).equals(")")){
					i++;
					return -1;
				}else
					return 15;
			}else
				return err;
		}else{
			err=COND();
			return err;
		}
	}
	
	static int COND2(){
		err=OPL();
		
		if(err==-1){
			err=CD();
			if(err==-1){
				err=COND2();
				return err;
			}else
				return err;
		}else
			return -1;
	}
	
	static int COND(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=COND();
			if(err==-1){
				if(s(code.get(i)).equals(")")){
					i++;
					err=OPL();
					if(err==-1){
						err=CD();
						if(err==-1){
							err=COND2();
							return err;
						}else
							return err;
					}else
						return err;
				}else
					return 15;
			}else
				return err;
		}else{
			err=EA();
			if(err==-1){
				err=OPC();
				if(err==-1){
					err=EA();
					if(err==-1){
						err=COND2();
						return err;
					}else
						return err;
				}else
					return err;
			}else
				return err;
		}
	}
	
	static int GOTO(){
		if(s(code.get(i)).equals("id")){
			i++;
			if(s(code.get(i)).equals(";")){
				i++;
				return -1;
			}else
				return 10;
		}else
			return 3;
	}
	
	static int WHILE(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=COND();
			if(err==-1){
				if(s(code.get(i)).equals(")")){
					i++;
					if(s(code.get(i)).equals("{")){
						i++;
						err=CORPS();
						if(err==-1){
							if(s(code.get(i)).equals("}")){
								i++;
								return -1;
							}else
								return 9;
						}else
							return err;
					}else
						return 8;
				}else
					return 15;
			}else
				return err;
		}else
			return 14;
	}
	
	static int FOR(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=VE();
			if(err==-1){
				if(s(code.get(i)).equals("id")){
					i++;
					if(s(code.get(i)).equals("=")){
						i++;
						err=EA();
						if(err==-1){
							if(s(code.get(i)).equals(";")){
								i++;
								err=COND();
								if(err==-1){
									if(s(code.get(i)).equals(";")){
										i++;
										if(s(code.get(i)).equals("id")){
											i++;
											err=OPS();
											if(err==-1){
												if(s(code.get(i)).equals(")")){
													i++;
													if(s(code.get(i)).equals("{")){
														i++;
														err=CORPS();
														if(err==-1){
															if(s(code.get(i)).equals("}")){
																i++;
																return -1;
															}else
																return 9;
														}else
															return err;
													}else
														return 8;
												}else
													return 15;
											}else
												return err;
										}else
											return 3;
									}else
										return 10;
								}else
									return err;
							}else
								return 21;
						}else
							return err;
					}else
						return 26;
				}else
					return 3;
			}else
				return err;
		}else
			return 14;
	}
	
	static int EXEC(){
		if(s(code.get(i)).equals("{")){
			i++;
			err=CORPS();
			if(err==-1){
				if(s(code.get(i)).equals("}")){
					i++;
					return -1;
				}else
					return 9;
			}else
				return err;
		}else{
			err=INST();
			return err;
		}
	}
	
	static int EIF(){
		if(s(code.get(i)).equals("if")){
			i++;
			err=IF();
			return err;
		}else{
			err=EXEC();
			return err;
		}
	}
	
	static int ELSE(){
		if(s(code.get(i)).equals("else")){
			i++;
			err=EIF();
			return err;
		}else
			return -1;
	}
	
	static int IF(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=COND();
			if(s(code.get(i)).equals(")")){
				i++;
				err=EXEC();
				if(err==-1){
					err=ELSE();
					return err;
				}else
					return err;
			}else
				return 15;
		}else
			return 14;
	}
	
	static int CORPS(){
		if(s(code.get(i)).equals("if")){
			i++;
			err=IF();
			if(err==-1){
				err=SUITE();
				return err;
			}else
				return err;
		}else{
			if(s(code.get(i)).equals("for")){
				i++;
				err=FOR();
				if(err==-1){
					err=SUITE();
					return err;
				}else
					return err;
			}else{
				if(s(code.get(i)).equals("while")){
					i++;
					err=WHILE();
					if(err==-1){
						err=SUITE();
						return err;
					}else
						return err;
				}else{
					if(s(code.get(i)).equals("switch")){
						i++;
						err=SWITCH();
						if(err==-1){
							err=SUITE();
							return err;
						}else
							return err;
					}else{
						if(s(code.get(i)).equals("goto")){
							i++;
							err=GOTO();
							if(err==-1){
								err=SUITE();
								return err;
							}else
								return err;
						}else{
							if(s(code.get(i)).equals("id")){
								i++;
								if(s(code.get(i)).equals(":")){
									i--;
									err=DEC();
									if(err==-1){
										err=SUITE();
										return err;
									}else
										return err;
								}else{
									i--;
									err=INST();
									if(err==-1){
										err=SUITE();
										return err;
									}else
										return err;
								}
							}else{
								err=INST();
								if(err==-1){
									err=SUITE();
									return err;
								}else{
									err=DEC();
									if(err==-1){
										err=SUITE();
										return err;
									}else
										return err;
								}
							}
						}
					}
				}
			}
		}
	}
	
	static int METH(){
		if(s(code.get(i)).equals("(")){
			i++;
			err=P();
			if(err==-1){
				if(s(code.get(i)).equals("{")){
					i++;
					err=CORPS();
					if(err==-1){
						if(s(code.get(i)).equals("}")){
							i++;
							return -1;
						}else
							return 9;
					}else
						return err;
				}else
					return 8;
			}else
				return err;
		}else
			return 14;
	}
	
	static int TDEC(){
		err=METH();
		if(err==-1){
			return -1;
		}else{
			err=TAB();
			if(err==-1){
				if(s(code.get(i)).equals(";")){
					i++;
					return -1;
				}else
					return 21;
			}else
				return 22;
		}
	}
	
	static int DEC(){
		err=TYPE();
		if(err==-1){
			if(s(code.get(i)).equals("id")){
				i++;
				err=TDEC();
				return err;
			}else
				return 3;
		}else{
			if(s(code.get(i)).equals("void")){
				i++;
				if(s(code.get(i)).equals("id")){
					i++;
					err=METH();
					return err;
				}else
					return 3;
			}else{
				if(s(code.get(i)).equals("id")){
					i++;
					if(s(code.get(i)).equals(":")){
						i++;
						return -1;
					}else
						return 20;
				}else
					return 3;
			}
		}
	}
	
	static int START(){
		err=STRUCT();
		if(err==-1){
			err=START();
			return err;
		}else{
			if(s(code.get(i)).equals("void")){
				i++;
				if(s(code.get(i)).equals("main")){
					i++;
					err=METH();
					return err;
				}else{
					i=i-1;
					err=DEC();
					if(err==-1){
						err=START();
						return err;
					}else
						return err;
				}
			}else{
				err=TYPE();
				if(err==-1){
					if(s(code.get(i)).equals("main")){
						i++;
						err=METH();
						return err;
					}else{
						i=i-1;
						err=DEC();
						if(err==-1){
							err=START();
							return err;
						}else
							return err;
					}
				}else
					return 7;
			}
		}
	}
	
	static int INC(){
		if(s(code.get(i)).equals("include")){
			i++;
			if(s(code.get(i)).equals("<")){
				i++;
				if(s(code.get(i)).equals("id")){
					i++;
					err=LIB();
					if(err==-1){
						if(s(code.get(i)).equals(">")){
							i++;
							return -1;
						}else
							return 6;
					}else
						return err;
				}else
					return 3;
			}else
				return 5;
		}else
			return 4;
	}
	
	public static int DEM(){
		try{
			if(s(code.get(i)).equals("#")){
				i++;
				err=INC();
				if(err==-1){
					err=DEM();
					return err;
				}else
					return err;
			}else{
				err=START();
				return err;
			}
		}catch(IndexOutOfBoundsException ioe){
			i=i-1;
		}
		return 0;
	}
}
