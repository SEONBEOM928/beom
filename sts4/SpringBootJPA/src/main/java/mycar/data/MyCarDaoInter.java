package mycar.data;

import org.springframework.data.jpa.repository.JpaRepository;
//JpaRepository 는 추상메서드 
public interface MyCarDaoInter extends JpaRepository<MyCarDto, Long>{

}
