package com.nexr.workerbee.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EntityPage<T> {
    private static final Logger logger = LoggerFactory.getLogger(EntityPage.class);

    private final int startPageNum=1;
    private List<T> results;
    private int pageSize;
    private int pageNum;
    private ScrollableResults scrollableResults;
    private int totalResults = 0;
    
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
            results = query.setFirstResult((pageNum-startPageNum) * pageSize).setMaxResults(pageSize + 1).list();
        } catch (HibernateException e) {
            logger.error("Failed to get paginated results: " + e.getMessage());
        }
    }
    
    public EntityPage(Criteria crit,int pageNum, int pageSize){
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        try {
            scrollableResults = crit.scroll();
            results = crit.setFirstResult((pageNum-startPageNum) * pageSize).setMaxResults( pageSize + 1).list();
        } catch (HibernateException e) {
            logger.error("Failed to get paginated results: " + e.getMessage());
        }
    }
    
    
    public boolean isFirstPage() {
        return pageNum == startPageNum;
    }
    
    public boolean isLastPage() {
        return pageNum >= getLastPageNum();
    }
    
    public boolean hasNextPage(){
        return results.size() > pageSize;
    }
    
    public boolean hasPrevPage() {
        return pageNum > startPageNum;
    }
    
    
    public int getLastPageNum() {
        /*
         * We use the Math.floor() method because page numbers are zero-based
         * (i.e. the first page is page 0).
         */
        double totalResults = new Integer(getTotalResults()).doubleValue();
        return new Double(Math.floor(totalResults / pageSize)).intValue()+startPageNum;
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
    
    public int getFirstResultNum(){
        return (pageNum-startPageNum)* pageSize + 1;
    }
    
    public int getFirstPageNum(){
        return startPageNum;
    }
    
    public int getLastResultNum() {
        int fullPage = getFirstResultNum() + pageSize - 1;
        return getTotalResults() < fullPage ? getTotalResults() : fullPage;
    }
    
    public int getNextPageNum() {
        return pageNum + 1;
    }
    
    public int getPrevPageNum() {
        return pageNum - 1;
    }
    
    public int getCurrentPageNum(){
        return pageNum;
    }
    
    public int getPageSize(){
        return pageSize;
    }
    
    protected ScrollableResults getScrollableResults() {
        return scrollableResults;
    }
    
    /* the following methods are work around for jsp el.
     * the reason start with 'get' is to access variable in jsp' expression lauguage. */
    
    public boolean getHasNextPage(){
        return hasNextPage();
    }
    
    public boolean getHasPrevPage(){
        return hasPrevPage();
    }
    
    public boolean getIsFirstPage(){
        return isFirstPage();
    }
    
    public boolean getIsLastPage(){
        return isLastPage();
    }
    
    public String toString(){
        String str = "Last Page Number : " + getLastPageNum()+"\n"+
                "Previous Page Number : " + getPrevPageNum() + "\n" +
                "Next Page Number : " + getNextPageNum() +"\n"+
                "First Result Number : " + getFirstResultNum() + "\n" +
                "Last Result Number : " + getLastResultNum() +"\n" +
                "Total Results " + getTotalResults();
        return str;
    }
}