package com.itwill.common;

import java.util.List;

import com.itwill.dto.PDDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProductPageMakerDto<E> {
	private List<E> itemList;
	private List<PDDTO> priceList;
	private ProductPageMaker pageMaker;
	public int totRecordCount;

	
	
	
}
