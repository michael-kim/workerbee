package com.nexr.workerbee.web.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EntityPage<T> {
    private static final Logger logger = LoggerFactory.getLogger(EntityPage.class);

    private final int pageNumBase=1;
    private List<T> results;
    private int pageSize;
    private int pageNum;
    private ScrollableResults scrollableResults;
    private int totalResults = 0;
    
    /**
     * Construct a new Page. Page numbers are zero-based, so the
     * first page is page 0.
     * 
     * @param query
     * the Hibernate Query
     * @param pageNum
     * the page number (zero-based)
     * @param pageSize
     * the number of results to display on the page
     */
    public EntityPage(Query query, int pageNum, int pageSize) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        try {
            scrollableResults = query.scroll();
            /*
             * We set the max results to one more than the specfied pageSize to
             * determine if any more results exist (i.e. if there is a next page
             * to display). The result set is trimmed down to just the pageSize
             * before being displayed later (in getList()).
             */
            results = query.setFirstResult((pageNum-pageNumBase) * pageSize).setMaxResults(pageSize + 1).list();
        } catch (HibernateException e) {
            logger.error("Failed to get paginated results: " + e.getMessage());
        }
    }
    
    public EntityPage(Criteria crit,int pageNum, int pageSize){
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        try {
            scrollableResults = crit.scroll();
            results = crit.setFirstResult((pageNum-pageNumBase) * pageSize).setMaxResults( pageSize + 1).list();
        } catch (HibernateException e) {
            logger.error("Failed to get paginated results: " + e.getMessage());
        }
    }
    
    public boolean isFirstPage() {
        return pageNum == 0;
    }
    
    public boolean isLastPage() {
        return pageNum >= getLastPageNumber();
    }
    
    public boolean hasNextPage() {
        return results.size() > pageSize;
    }
    
    public boolean hasPreviousPage() {
        return pageNum > 0;
    }
    
    public int getLastPageNumber() {
        /*
         * We use the Math.floor() method because page numbers are zero-based
         * (i.e. the first page is page 0).
         */
        double totalResults = new Integer(getTotalResults()).doubleValue();
        return new Double(Math.floor(totalResults / pageSize)).intValue();
    }
    
    public List<T> getList() {
        /*
         * Since we retrieved one more than the specified pageSize when the
         * class was constructed, we now trim it down to the pageSize if a next
         * page exists.
         */
        return hasNextPage() ? results.subList(0, pageSize) : results;
    }
    
    
    public int getTotalResults() {
        try {
            getScrollableResults().last();
            totalResults = getScrollableResults().getRowNumber();
        } catch (HibernateException e) {
            logger.error( "Failed to get last row number from scollable results: "  + e.getMessage());
        }
        return totalResults;
    }
    
    public int getFirstResultNumber(){
        return (pageNum-pageNumBase)* pageSize + 1;
    }
    
    public int getLastResultNumber() {
        int fullPage = getFirstResultNumber() + pageSize - 1;
        return getTotalResults() < fullPage ? getTotalResults() : fullPage;
    }
    
    public int getNextPageNumber() {
        return pageNum + 1;
    }
    
    public int getPreviousPageNumber() {
        return pageNum - 1;
    }
    
    public int getCurrentPageNumber(){
        return pageNum;
    }
    
    public int getPageSize(){
        return pageSize;
    }
    
    protected ScrollableResults getScrollableResults() {
        return scrollableResults;
    }
    
    public String toString(){
        String str = "Last Page Number : " + getLastPageNumber()+"\n"+
                "Previous Page Number : " + getPreviousPageNumber() + "\n" +
                "Next Page Number : " + getNextPageNumber() +"\n"+
                "First Result Number : " + getFirstResultNumber() + "\n" +
                "Last Result Number : " + getLastResultNumber() +"\n" +
                "Total Results " + getTotalResults();
        return str;
    }
}