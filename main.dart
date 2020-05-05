import 'dart:io';

double taxIncome;
double pit;



void main() {
    print("PERSONAL INCOME TAX CALCULATOR ");
    print("Enter your full name:  ");
    String name = stdin.readLineSync();
    print('what is your tax identification number?');
    var tin_str =stdin.readLineSync();
    int tin = int.parse(tin_str);
    print('Enter your gross income');
    var grossIncome_str = stdin.readLineSync();
    double grossIncome = double.parse(grossIncome_str);
    //multiply gross income by 10%
    double grossIncome10 = grossIncome * 0.01;
    //multiply by 20%
    double grossIncome20 = grossIncome10 * 0.02;


    print('How many children do you have?');
    var children_str = stdin.readLineSync();
    double children = double.parse(children_str);
    //each child gets a relieve of 2500
    //TODO limit number of children to pita
    double children2 = children * 2500;
    print('How many dependent relatives do you have?');
    var relatives_str = stdin.readLineSync();
    double relatives = double.parse(relatives_str);
    //each relative gets 2000, 
    //TODO limit number of relatives to pita
    double relatives2 = relatives * 2000;

    //pension relief
    double pension = 0.075 * grossIncome;

// A library of functions for tax computing

first300(){
    return 300000*.07;
}

second300(){
    return 300000*.11;
}

first500(){
    return 500000*.15;
}

second500(){
    return 500000*.19;
}

//conditionals
if (grossIncome10> 200000){
    taxIncome = grossIncome10 + grossIncome20 + children2 + relatives2 + pension;
}
else{
    taxIncome = 200000 + grossIncome20 + children2 + relatives2 + pension;
}
if ( taxIncome <= 300000){
     pit = taxIncome * .07;
}
else if ( taxIncome <= 600000){
   pit = first300() + (taxIncome *.11);
}
else if (taxIncome <= 1100000){
    pit = second300() + first300() + (taxIncome * .15);
}
else if (taxIncome <= 1600000){
     pit = first500() + second300() + first300() +(taxIncome * .19);
}
else{
     pit = second500() + first500() + second300() + first300() + (taxIncome * .21);
}

print('Income tax liability for $name with tin: $tin is  N $pit');

}

