package com.gt.common.pagination.impl;

import java.util.List;

import com.gt.common.pagination.BetweenIndex;
import com.gt.common.pagination.Pagination;
import com.gt.common.pagination.QueryHandler;

/**
 * Pagination接口默认实现
 * 
 * @author zhangwei
 * @param <T>
 */
public class DefaultPagination<T> implements Pagination<T> {
	private int totalElements;
	private int pageSize;
	private int totalPages;
	private int pageIndex;
	private QueryHandler<T> queryHandler;
	private List<T> currData;
	private int pageLinkNumber;

	public DefaultPagination(int pageIndex, int pageSize, QueryHandler<T> queryHandler, int pageLinkNumber) {
		this(pageIndex, pageSize, queryHandler);
		setPageLinkNumber(pageLinkNumber);
	}

	public DefaultPagination(int pageIndex, int pageSize, QueryHandler<T> queryHandler) {
		// 初始化数据访问回调接口
		this.queryHandler = queryHandler;
		// 查询总行数
		setTotalElements();
		// 修正页大小
		setPageSize(pageSize);
		// 计算总页数:
		setTotalPages();
		// 修正页码
		setPageIndex(pageIndex);
		// 查询当前页数据
		setCurrData();
	}

	private void setCurrData() {
		this.currData = queryHandler.getCurrData(pageIndex, pageSize);
	}

	private void setPageIndex(int pageIndex) {
		if (pageIndex < 1) {
			this.pageIndex = 1;
		} else if (pageIndex > totalPages) {
			this.pageIndex = totalPages;
		} else {
			this.pageIndex = pageIndex;
		}
	}

	private void setTotalPages() {
		if (pageSize > 0) {
			/*
			 * //普通算法: this.totalPages = totalElements % pageSize == 0 ?
			 * totalElements / pageSize : (totalElements / pageSize) + 1;
			 */
			// 减一公式:
			this.totalPages = (totalElements + pageSize - 1) / pageSize;
		}
	}

	private void setPageSize(int pageSize) {
		if (pageSize < 1) {
			this.pageSize = 1;
		} else if (pageSize > totalElements) {
			this.pageSize = totalElements;
		} else {
			this.pageSize = pageSize;
		}
	}

	private void setTotalElements() {
		this.totalElements = queryHandler.getTotalElements();
	}

	@Override
	public boolean isFirst() {
		return pageIndex == 1;
	}

	@Override
	public boolean isLast() {
		return pageIndex == totalPages;
	}

	@Override
	public boolean isPrevious() {
		return pageIndex > 1;
	}

	@Override
	public boolean isNext() {
		return pageIndex < totalPages;
	}

	@Override
	public int getPreviousIndex() {
		return isPrevious() ? pageIndex - 1 : 1;
	}

	@Override
	public int getNextIndex() {
		return isNext() ? pageIndex + 1 : totalPages;
	}

	@Override
	public int getPageIndex() {
		return pageIndex;
	}

	@Override
	public int getPageSize() {
		return pageSize;
	}

	@Override
	public int getTotalPages() {
		return totalPages;
	}

	@Override
	public int getTotalElements() {
		return totalElements;
	}

	@Override
	public List<T> getCurrData() {
		return currData;
	}

	@Override
	public BetweenIndex getBetweenIndex() {
		return new BetweenIndex() {
			private int beginIndex;
			private int endIndex;
			{
				boolean isOdd = pageLinkNumber % 2 == 0;
				int val = pageLinkNumber / 2;
				beginIndex = pageIndex - (isOdd ? val - 1 : val);
				endIndex = pageIndex + val;
				if (beginIndex < 1) {
					beginIndex = 1;
					endIndex = pageLinkNumber;
				}
				if (endIndex > totalPages) {
					endIndex = totalPages;
					beginIndex = endIndex - pageLinkNumber + 1;
				}
			}

			@Override
			public int getEndIndex() {
				return endIndex;
			}

			@Override
			public int getBeginIndex() {
				return beginIndex;
			}
		};
	}

	@Override
	public int getPageLinkNumber() {
		return pageLinkNumber;
	}

	@Override
	public void setPageLinkNumber(int pageLinkNumber) {
		if (pageLinkNumber < 0) {
			this.pageLinkNumber = 0;
		} else if (pageLinkNumber > totalPages) {
			this.pageLinkNumber = totalPages;
		} else {
			this.pageLinkNumber = pageLinkNumber;
		}
	}
	// ~ 静态成员 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ 静态方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ 成员变量 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ 构造方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ 成员方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ g^setX ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	// ~ main() ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
}
