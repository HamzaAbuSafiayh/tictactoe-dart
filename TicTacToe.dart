import 'dart:io';
void main(){
  var tictactoe = [1,2,3,4,5,6,7,8,9,'X','O'];
 printgame(tictactoe); 
 bool turn=true;
 int? inputp;
 int count=0;
  for(int i = 0 ; i <= tictactoe.length -2 ; i++){

    
    while(true){
    print('${turn? 'Player1' : 'Player2'}, please enter the number of the square where you want to place your ${turn? 'X' : 'O'}:');
    inputp = int.parse(stdin.readLineSync()!);
   
    if (tictactoe[inputp-1]!=tictactoe[9] && tictactoe[inputp-1]!=tictactoe[10]){
    break;
    }
    }
    if(turn){
    changetoX(inputp, tictactoe);

    }else{
      changetoO(inputp, tictactoe);
    }
    count++;
    printgame(tictactoe);
    checkwinner(tictactoe,turn,count);
    turn = !turn;
    
  }

 }
 




void printgame(var array){
  stdout.write(' ${array[0]} | ${array[1]} | ${array[2]}\n');
  stdout.write('---+---+---\n');
  stdout.write(' ${array[3]} | ${array[4]} | ${array[5]}\n');
  stdout.write('---+---+---\n');
  stdout.write(' ${array[6]} | ${array[7]} | ${array[8]}\n');
}
void changetoX(int number,var array){
array[number-1] = array[9];
}
void changetoO(int number,var array){
array[number-1] = array[10];
}

void checkwinner(var array, bool turn, int count){
  String h = turn? 'X' : 'O';
  if(array[0]==h && array[1]==h && array[2]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[0]==h && array[4]==h && array[8]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[2]==h && array[4]==h && array[6]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[0]==h && array[3]==h && array[6]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[1]==h && array[4]==h && array[7]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[2]==h && array[5]==h && array[8]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[3]==h && array[4]==h && array[5]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }else if(array[6]==h && array[7]==h && array[8]==h){
    print('Winner is ${h=='X'? 'Player1' : 'Player2'}');
    exit(0);
  }
  else if(count==9){
    print('Game is a Draw');
    exit(0);
  }
  
}

