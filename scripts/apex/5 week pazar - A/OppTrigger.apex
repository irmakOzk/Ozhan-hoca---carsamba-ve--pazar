Opportunity op = new Opportunity();
op.Name = 'Test ';
op.StageName= 'Prospecting';
op.CloseDate = date.Today().addDays(15);
op.Amount = 1000;

Opportunity op2 = new opportunity();
op2.Name = 'Test 2';
op2.StageName= 'Prospecting';
op2.CloseDate = date.Today().addDays(15);
op2.Amount = 2000;

Opportunity op3 = new opportunity();
op3.Name = 'Test 2';
op3.StageName= 'Prospecting';
op3.CloseDate = date.Today().addDays(15);
op3.Amount = 2000;

list<Opportunity> oppList = new list<Opportunity>();
oppList.add(op);
oppList.add(op2);
oppList.add(op3);

Insert oppList;

for (opportunity op : oppList) {
   
    op.CloseDate = date.Today().addDays(30);
    op.Amount += 1000;
    
}
update oppList;