package com.gt.common.pagination;

import java.util.List;

/**
 * 分页查询回调接口
 * @author zhangwei
 * @param <T>
 */
public interface QueryHandler<T> {
	/**
     * 获取数据总行数
     * @return
     */
    int getTotalElements();
    
    /**
     * 获取当前页的数据
     * @param pageIndex
     * @param pageSize
     * @return
     */
    List<T> getCurrData(int pageIndex, int pageSize);
}
