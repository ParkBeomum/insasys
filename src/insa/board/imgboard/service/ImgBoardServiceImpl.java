package insa.board.imgboard.service;

import insa.board.imgboard.dao.ImgBoardDao;
import insa.board.imgboard.dto.ImgBoardDTO;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
@Service
public class ImgBoardServiceImpl implements ImgBoardService {
    
    @Inject
    ImgBoardDao dao;
    
	
	@Override
	public void create(ImgBoardDTO dto) {
       	dao.create(dto);	
       	
	}

	@Override
	public List<ImgBoardDTO> list() {
		List<ImgBoardDTO> list = dao.list();
		return list;
	}

	@Override
	public void update(ImgBoardDTO dto) {
        dao.update(dto);		
	}

	@Override
	public void delete(int num) {
		dao.delete(num);
		
	}

	@Override
	public ImgBoardDTO view(int num) {
		System.out.println("service - num :"+num);
		ImgBoardDTO board = new ImgBoardDTO();
		board = dao.view(num);
		return board;
	}

}