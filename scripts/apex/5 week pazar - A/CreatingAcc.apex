account acc = new Account();
acc.name='xxx';
acc.AnnualRevenue = 100000;
insert acc;

acc.name+= 'Update';
acc.AnnualRevenue = 99999;
update acc;