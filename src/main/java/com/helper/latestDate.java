package com.helper;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;

public  class latestDate {
	public static Date getLatestDate() {
	    Session s = FactoryProvider.getFactory().openSession();
	    Transaction tx = s.beginTransaction();
	    
	    @SuppressWarnings("rawtypes")
	    NativeQuery N = s.createSQLQuery("SELECT adedDate FROM notes ORDER BY adedDate DESC LIMIT 1");
	    
	    Date Datetime = (Date) N.uniqueResult();
//	    Date d = note.getAdedDate();
	    
	    tx.commit();
	    s.close();
	    
	    return Datetime;
	}



}
