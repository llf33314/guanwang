package com.gt.common.pagination;

/**
 * 开始链接-结束链接
 * @author zhangwei
 */
public interface BetweenIndex {
	/**
     * 获取开始分页链接索引
     * @return
     */
    int getBeginIndex();
    /**
     * 获取结束分页链接索引
     * @return
     */
    int getEndIndex();
}
