# SPRING_PROJECT
[장종민 이력서 SPRING포트폴리오.pptx](https://github.com/kobyjang/SPRING_PROJECT/files/7808100/SPRING.pptx)

![Spring](https://user-images.githubusercontent.com/91588946/147828126-4de89d37-a76e-430e-ace0-f8d0e872d25d.jpg)







여기 저장소는 spring의 구조를 익히기 위해 수업을 듣고 배운것을 단계적으로 나눈 상태 입니다.
밑에 설명은 참고가 되었던 민구글님의 블로그를 가져와서 매일 볼려고 넣어둔 상태 입니다.
146663981-685916de-4202-462e-81e5-0ebf0c9a01e3 (Spring MVC DispatcherServlet)

클라이언트(사용자)의 모든 요청은 DispatcherServlet이 받는다.

DispatcherServlet은 hanlderMapping을 통해서 요청에 해당하는 Controller를

실행 시킨다.

Controller는 적절한 서비스 객체를 호출 시킨다.
![147827779-30036697-0e98-4b84-892e-9541cd0fdda0](https://user-images.githubusercontent.com/91588946/147827786-72f4c43c-c450-415a-9967-4b14b5dcccaa.png)

Service는 DB처리를 위해 DAO를 이용하여 데이터를 요청 한다.

5.DAO는 mybatis를 이용하는 Mapper를 통해 작업 처리를 한다.

결과(처리한 데이터)가 mapper->DAO->Service->Controller로 전달된다.

Contorller는 전달된 결과(처리된 데이터)를 View Resolver를 통해

전달 받을 View가 있는지 검색한다.

전달 받은 View가 있다면 View에게 전달된 결과(처리된 데이터)를 전달한다.

View는 전달받은 결과(처리된 데이터)를 다시 DispatcherServlet에게 전달한다.

DispatcherServlet은 전달받은 결과(처리된 데이터)를 클라이언트에게 전달한다.

*Front Controller의 역할은 서버로 들어오는 모든 요청을 받아서 처리합니다.

(공통 처리 작업을 먼저 수행 한 후 적절한 세부컨트롤러에게 작업을 위임해주고 예외 발생시 일관된 방식으로 에러를 처리해주는 일을 합니다.

이런 일들을 하기 때문에 각 컨트롤러들 사이의 중복된 코드 문제나

협업시 개발자들의 개발 방식이 다른 경우 등을 해결을 할 수 있습니다.)

*스프링에서 제공하는 FrontController인 DispatcherServlet의 역할은 무엇일까요??

DispatcherServlet의 등장으로 엄청나게 web.xml의 역할이 축소 된 것입니다.

DispatcherServlet가 있기전에는 사용자의 URL을 일일이 요청을 처리하기 위해

web.xml에 등록(서블릿과 매핑시켜주는 작업)을 반드시 해야했었습니다.

그렇다고 web.xml이 안쓰이는 것은 아닙니다.

web.xml에서 자주 쓰이는 서블릿 매핑을 DispatcherServlet이 한다고 생각하시면 되고

나머지 web.xml의 기능들은 그대로 web.xml을 이용하신다고 생각하시면됩니다.

(web.xml의 기능은 DispatcherServlet등록, 객체의 URL범위 , 필터 등이 있습니다.)

*스프링 MVC Controller의 특징

파라미터 수집
-사용자의 요청에 필요한 데이터를 추출하고

VO(DB의 레코드와 상응되는 클래스) 나 DTO(컨트롤러,뷰,비즈니스등의 계층간 데이터 교환을 위한 자바빈즈)로 변환하는 파라미터의 수집 작업을 합니다.

2.애노테이션을 통한 간편 설정

-스프링 MVC 설정은 MVC나 애노테이션을 사용가능하고, 주로

애노테이션을 이용하여 클래스나 메소드의 선언에 필요한 애노테이션을 추가하는

작업을 통해 요청이나 응답에 필요한 모든 처리를 완료할 수 있습니다.

출처: https://min-it.tistory.com/7 [MIN-IT]

