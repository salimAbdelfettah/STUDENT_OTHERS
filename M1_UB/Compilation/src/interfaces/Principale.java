package interfaces;

import java.awt.*;
import java.awt.event.*;
import java.util.Iterator;

import javax.swing.*;

import programmes.AnalyseLexicale;
import programmes.AnalyseSyntaxique;

public class Principale extends JFrame implements ActionListener{ //ecoute de la souris

	public static JTextArea ta=new JTextArea();
	public static JTextArea ttok=new JTextArea();
	public static JTextArea terr=new JTextArea();
	public static int nb_err=0;
	public static JPanel tok=new JPanel();
	//public static JMenuItem nouv=new JMenuItem("Nouveau");
	//public static JMenuItem open=new JMenuItem("Ouvrir");
	//public static JMenuItem save=new JMenuItem("Enregistrer");
	//public static JMenuItem saveas=new JMenuItem("Enregistrer sous ...");
	public static JMenuItem quit=new JMenuItem("Quitter");
	public static JMenuItem anul=new JMenuItem("Annuler");
	public static JMenuItem coup=new JMenuItem("Couper");
	public static JMenuItem copi=new JMenuItem("Copier");
	public static JMenuItem col=new JMenuItem("Coller");
	public static JMenuItem supp=new JMenuItem("Supprimer");
	public static JMenuItem analys=new JMenuItem("Analyser (F9)");
	//public static JMenuItem corrig=new JMenuItem("Corriger (F8)");
	public static JMenuItem apropos=new JMenuItem("A Propos");
	protected static JLabel sit=new JLabel(" Ligne "+1+", Colonne "+1);
	Dimension s;
	private static final long serialVersionUID = -2813758993656362411L;
	
	//methode qui calcule la position x,y (colonne , ligne)
	public static void position(){
		int posx=1;
		int posy=1;
		int p=ta.getSelectionStart();
		String s=ta.getText();
		for(int i=0;i<p;i++){
			if(s.charAt(i)=='\n'){
				posx=1;posy++;
			}else{
				posx++;
			}
		}
		sit.setText(" Ligne "+posy+", Colonne "+posx);
		int pp=ta.getSelectionEnd();
			if(p!=pp){
				posx=1;
				posy=1;
				for(int i=0;i<pp;i++){
					if(s.charAt(i)=='\n'){
						posx=1;posy++;
					}else{
						posx++;
					}
				}
			sit.setText(sit.getText()+" - Ligne "+posy+", Colonne "+posx);
			}
	}
	
	
	// methode lors de le fermeture de l'application
	public static void onclose(){
		//int choix=JOptionPane.showConfirmDialog(null, "Voulez vous sauvegarder le code source avant de quitter l'application ?");
		//if(choix<2){
			//if(choix==1){
			//enregistrer	
			//}
			System.exit(0);
		//}
	}
	
	private static String get_err(int t){
		switch(t){
		case 0:return "Caractère inconnue.";
		case 1:return "Un identifiant doit commencer par une lettre.";
		case 2:return "Un réel ne doit pas contienir plus d'un point.";
		case 3:return "Un caractère doit doit contenir un seul symbole être entre 2 apostrophe.";
		case 4:return "Une chaîne doit être entre 2 guieumets.";
		case 5:return "Symbole incorrect.";
		}
		return "??";
	}
	
	//methode pour afficher les tokens
	private static void affiche_tokens(){
		ttok.setText("");
		Iterator<Object[]> ite=AnalyseLexicale.tokens.iterator();
		while(ite.hasNext()){
			Object[] O=ite.next();
			ttok.append("\n"+O[0]);
		}
	}
	
	//methode pour afficher les erreurs
	private static void affiche_erreurs(){
		terr.setText("");
		Iterator<Object[]> ite=AnalyseLexicale.errors.iterator();
		while(ite.hasNext()){
			Object[] O=ite.next();
			terr.append("\nErreur ligne "+O[3]+" colonne "+O[4]+" : "+get_err(Integer.parseInt(O[0].toString())));
		}
	}
	
	//constructeur
	public Principale() {
		//pour ne rien faire lors de l'appuye sur le bouton de fermeture (X) de l'application 
		setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);
		//quoi faire lors de l'appuye sur le bouton de fermeture (X) de l'application 
		addWindowListener( new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
			onclose();	//appele a la methode onclose declare precedemant
			}
			});
		// attend un evenement qui est taper une lettre
		KeyListener kl=new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				if(arg0.getKeyCode()==120){//F9
					AnalyseLexicale.tokens.clear();
					AnalyseLexicale.errors.clear();
					nb_err=0;
					AnalyseLexicale.analyser();
					affiche_tokens();
					String msg="";
					if (nb_err>0){
						affiche_erreurs();
						if(nb_err==1)
						msg=" Une erreur lexicale a été détectée !";
						else
						msg=" "+nb_err+" erreurs lexicaux ont étaient détectées !";
						msg=msg+"\n Veuillez vérifier votre code source.";
						JOptionPane.showMessageDialog(null, msg,"Attention !", 2);
					}else{
						terr.setText("Aucune erreur lexicale détectée.");
						AnalyseSyntaxique.code=AnalyseLexicale.tokens;
						AnalyseSyntaxique.i=0;
						try{
						AnalyseSyntaxique.DEM();
						}catch(NullPointerException n){
							//System.out.println(AnalyseSyntaxique.err);
						}
						//System.out.println(AnalyseSyntaxique.i);
						//System.out.println(AnalyseSyntaxique.s(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)));
						nb_err=AnalyseSyntaxique.err;
							if(nb_err==-1){
								msg=" Aucune erreur lexicale ni syntaxique n'a été détectée !";
								msg=msg+"\n Votre code source est correct.";
								JOptionPane.showMessageDialog(null, msg,"Félicitations !", 1);
							}else{
								msg=" Erreur syntaxique détectée !";
								msg=msg+"\n Veuillez vérifier la syntaxe de votre code source.";
								JOptionPane.showMessageDialog(null, msg,"Attention !", 2);
									ta.setSelectionStart(Integer.parseInt(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)[3].toString()));
									ta.setSelectionEnd(1+Integer.parseInt(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)[4].toString()));
							}
						
						
					}
				}
				if(arg0.getKeyCode()==119){//F8
					//
				}
			}
			
			@Override
			public void keyPressed(KeyEvent arg0) {
				// TODO Auto-generated method stub
			}
		};
		// attend un evenement qui est taper une lettre mais seulement sur textarea
		KeyListener klta=new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				position();
				//retourne la posistion x,y apres avoir tape
			}
			
			@Override
			public void keyPressed(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
		};
		MouseListener msta=new MouseListener() {
			
			@Override
			public void mouseReleased(MouseEvent arg0) {
				// TODO Auto-generated method stub
				position();
				//retourne la posistion x,y apres avoir clicke
			}
			
			@Override
			public void mousePressed(MouseEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseExited(MouseEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseEntered(MouseEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseClicked(MouseEvent arg0) {
				// TODO Auto-generated method stub
				
			}
		};
		ta.addKeyListener(klta);//ajout du l'evenement d'attente de taper
		ta.addMouseListener(msta);//ajout de l'evenement d'attente de clicker
		Dimension dim=Toolkit.getDefaultToolkit().getScreenSize();
		setSize(dim.width,(dim.height*95)/100);
		setResizable(false);
		setTitle("Analyseur lexicale & syntaxique Mini-C");
		//declaration du menubar, des menus et des items et imrication des uns sur les autres...
		//(avec la methode add)
		JMenuBar mb=new JMenuBar();
		JMenu file=new JMenu("Fichier");
		//file.add(nouv);file.add(open);file.add(save);
		//file.add(saveas);file.addSeparator();
		file.add(quit);
		JMenu edit=new JMenu("Edition");
		edit.add(anul);edit.addSeparator();edit.add(coup);
		edit.add(copi);edit.add(col);edit.add(supp);
		JMenu action=new JMenu("Actions");
		action.add(analys);//action.add(corrig);
		JMenu intero=new JMenu("?");
		intero.add(apropos);
		mb.add(file);mb.add(edit);mb.add(action);mb.add(intero);
		setJMenuBar(mb); //attribution de mb comme JMenuBar de l'application
		//declaration des conteneurs (JRootPane et JPanel) et des Layouts ...
		//(BorderLayout, GridBagLayout), ...
		JRootPane rpan=new JRootPane();
		JPanel panh=new JPanel();
		panh.setLayout(new BorderLayout(2,2));
		JPanel panb=new JPanel();
		panb.setLayout(new BorderLayout(2,2));
		JInternalFrame code=new JInternalFrame(); // fenetre interne
		code.setLayout(new BorderLayout(2,2));
		JScrollPane span=new JScrollPane(ta); // on doit mettre le TextArea dans un ...
		// ScrollPane pou evitre le remidmentionement dans certains cas (ici non) ...
		// et pour pouvoir avoir un scroll pour basculer dans le text si celui ci ...
		// est tres grand
		code.add(span,"Center");
		code.add(sit,"South");
		code.setVisible(true);
		JTabbedPane tpan=new JTabbedPane(); // panau d'onglets
		tok.setLayout(new BorderLayout(2,2));
		JPanel err=new JPanel();
		err.setLayout(new BorderLayout(2,2));
		//tal.setEditingRow(false); // on ne pourra pas le modifier (textarea)
		ttok.setBackground(tok.getBackground()); // changer la couleur
		ttok.addKeyListener(kl);
		ttok.setFocusable(false);
		ttok.setEditable(false);
		//tas.setEditingRow(false);
		terr.setBackground(err.getBackground());
		terr.addKeyListener(kl);
		terr.setFocusable(false);
		terr.setEditable(false);
		affiche_tokens();
		tok.add(new JScrollPane(ttok));
		err.add(new JScrollPane(terr));
		tpan.add("Token(s)", tok);
		tpan.add("Erreur(s) lexicale(s)", err);
		panh.add(code);
		panb.add(tpan);
		GridBagConstraints gbc=new GridBagConstraints(); // pour controler le ...
		rpan.setLayout(new GridBagLayout());
		// grid bag layout
		gbc.fill=GridBagConstraints.BOTH; // ?
		gbc.gridx=1; // 1 composant par ligne
		gbc.weightx=1; // va prendre 1 colonne
		gbc.weighty=2; // va prendre 2 lignes
		rpan.add(panh,gbc);
		gbc.weighty=1; // va prendre 1 ligne
		rpan.add(panb,gbc);
		s=panb.getSize();
		add(rpan);
		//ajout des comossants au actionlistener
		//nouv.addActionListener(this);open.addActionListener(this);
		//save.addActionListener(this);saveas.addActionListener(this);
		quit.addActionListener(this);anul.addActionListener(this);
		coup.addActionListener(this);copi.addActionListener(this);
		col.addActionListener(this);supp.addActionListener(this);
		analys.addActionListener(this);//corrig.addActionListener(this);
		apropos.addActionListener(this);
		ta.addKeyListener(kl);
		repaint();
	}


	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		Object source=arg0.getSource();
		if(source.equals(quit)){
			onclose();
		}
		
		if(source.equals(coup)){
			ta.cut();
			position();
		}
		if(source.equals(copi)){
			ta.copy();
			position();
		}
		if(source.equals(col)){
			ta.paste();
			position();
		}
		if(source.equals(supp)){
			if(ta.getSelectionStart()!=ta.getSelectionEnd()){
			String s="";
			int l=ta.getText().length();
			for(int i=0;i<l;i++){
				if((i<ta.getSelectionStart())||(i>=ta.getSelectionEnd())){
					s=s+ta.getText().charAt(i);
				}
			}
			ta.setText(s);
			position();
			}
		}
		if(source.equals(analys)){
			AnalyseLexicale.tokens.clear();
			AnalyseLexicale.errors.clear();
			nb_err=0;
			AnalyseLexicale.analyser();
			affiche_tokens();
			String msg="";
			if (nb_err>0){
				affiche_erreurs();
				if(nb_err==1)
				msg=" Une erreur lexicale a été détectée !";
				else
				msg=" "+nb_err+" erreurs lexicaux ont étaient détectées !";
				msg=msg+"\n Veuillez vérifier votre code source.";
				JOptionPane.showMessageDialog(null, msg,"Attention !", 2);
			}else{
				terr.setText("Aucune erreur lexicale détectée.");
				AnalyseSyntaxique.code=AnalyseLexicale.tokens;
				AnalyseSyntaxique.i=0;
				try{
				AnalyseSyntaxique.DEM();
				}catch(NullPointerException n){
					//System.out.println(AnalyseSyntaxique.err);
				}
				//System.out.println(AnalyseSyntaxique.i);
				//System.out.println(AnalyseSyntaxique.s(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)));
				nb_err=AnalyseSyntaxique.err;
					if(nb_err==-1){
						msg=" Aucune erreur lexicale ni syntaxique n'a été détectée !";
						msg=msg+"\n Votre code source est correct.";
						JOptionPane.showMessageDialog(null, msg,"Félicitations !", 1);
					}else{
						msg=" Erreur syntaxique détectée !";
						msg=msg+"\n Veuillez vérifier la syntaxe de votre code source.";
						JOptionPane.showMessageDialog(null, msg,"Attention !", 2);
							ta.setSelectionStart(Integer.parseInt(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)[3].toString()));
							ta.setSelectionEnd(1+Integer.parseInt(AnalyseSyntaxique.code.get(AnalyseSyntaxique.i)[4].toString()));
					}
				
				
			}
		}
		//if(source.equals(corrig)){
			//
		//}
		if(source.equals(apropos)){
			String msg="Réalisé par : Mr. ABDELFETTAH Salim et al.";
			msg=msg+"\nTP Techniques et Outils des Langages et de Compilation";
			msg=msg+"\nAnnée Universitaire : 2011/2012";
			JOptionPane.showMessageDialog(null, msg,"A propos de l'application", 1);
		}
	}

}
