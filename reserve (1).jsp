<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/seat_reserve.css">
    <title>좌석 조회/예약</title>

    <!-- 달력 jQuery UI CSS파일 -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>  
    <!-- 달력 jQuery 기본 js파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <!-- 달력 jQuery UI 라이브러리 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']);
            $("#inquiryDate").datepicker({
                showMonthAfterYear: true,
                nextText: '다음 달',
                prevText: '이전 달', 
                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dateFormat: "yy-mm-dd",
                minDate: 0, // 선택할수있는 최소날짜, (0: 오늘 이전 날짜 선택 불가)
                maxDate: 30, // 선택할수있는 최소날짜, (30: 30일 이후 날짜 선택 불가)
            });
            if (<%=request.getParameter("date")%>){
            }
            else{
                $("#inquiryDate").datepicker().datepicker('setDate', new Date()); // 오늘 날짜로 초기 설정
            }
        });
    </script>

    <script type="text/javascript">
        function setItem(str){
            document.getElementById("cSeat").innerText = str;
        }
    </script>

    <script type="text/javascript">
        function reserve() {
            var date = document.getElementById("cDate").innerText;
            var time = document.getElementById("cTime").innerText;
            var seat = document.getElementById("cSeat").innerText;
            if(date == "null"){
                alert("날짜를 선택해주세요.");
                location.reload();
            }
            else if(time == "null"){
                alert("시간을 선택해주세요.");
            }
            else if(seat == ""){
                alert("좌석을 선택해주세요.");
            }
            else{
                var answer = confirm("날짜: " + date + "\n시간: " + time + "\n좌석: " + seat +
                                "\n위 내용으로 예약을 진행합니까?\n(확인을 누르시면 진행합니다.)");
                if(answer){
                    var formDate = new FormData;
                    formDate.append("date", date);
                    formDate.append("time", time);
                    formDate.append("seat", seat);
                    alert("예약이 완료되었습니다.");
                }
            }
        }
    </script>

</head>

<body>
    <script>
        function btnChange(str, objName) {
            var btnObj = document.getElementById(objName);
            if (str.includes(objName)) {
                btnObj.setAttribute('class', 'unusable');
            }
        }

        function test() {
            btnChange(res, p_a);
            btnChange(res, p_b);
            btnChange(res, p_c);
            btnChange(res, p_d);
            btnChange(res, p_e);
            btnChange(res, p_f);
            btnChange(res, c_a);
            btnChange(res, c_b);
            btnChange(res, c_c);
            btnChange(res, c_d);
            btnChange(res, s_a);
            btnChange(res, s_b);
            btnChange(res, d_a);
            btnChange(res, d_b);
        }
    </script>
    <form action="test.jsp" method="post">
    <div class="window">
        <div class="upside">
                <table class="tableLayer">
                    <tr> <!--1-->
                        <td colspan="2" rowspan="4"><input type="text" name="seat" onclick="setItem('스터디룸 1');" value="스터디룸 1">스터디룸 1</td>
                        <td></td>
                        <td><button id="p_a" class="usable" onclick="setItem('1');">1</button></td>
                        <td><button id="p_b" class="usable" onclick="setItem('2');">2</button></td>
                        <td><button id="p_c" class="usable" onclick="setItem('3');">3</button></td>
                        <td><button id="p_d" class="usable" onclick="setItem('4');">4</button></td>
                        <td><button id="p_e" class="usable" onclick="setItem('5');">5</button></td>
                        <td><button id="p_f" class="usable" onclick="setItem('6');">6</button></td>
                        <td class="notUse">화장실</td>
                        <td></td> <td></td> <td></td>
                    </tr>
                    <tr> <!--2-->
                        <td></td> <td></td> <td></td> <td></td>
                        <td></td> <td></td> <td></td> <td></td>
                        <td colspan="2" rowspan="2"><button id="c_a" class="usable" onclick="setItem('스터디룸 3');">스터디룸 3</button></td>
                    </tr>
                    <tr> <!--3-->
                        <td></td>
                        <td colspan="6" rowspan="2"><bUtton id="d_a" class="usable" onclick="setItem('공용테이블 1');">공용 테이블 1</button></td>
                        <td></td>
                    </tr>
                    <tr> <!--4-->
                        <td></td> <td></td>
                        <td colspan="2" rowspan="2"><button id="c_b" class="usable" onclick="setItem('스터디룸 4');">스터디룸 4</button></td>
                    </tr>
                    <tr> <!--5-->
                        <td colspan="2" rowspan="4"><button id="s_b" class="usable" onclick="setItem('스터디룸 2');">스터디룸 2</button></td>
                        <td></td> <td></td> <td></td> <td></td>
                        <td></td> <td></td> <td></td> <td></td>
                    </tr>
                    <tr> <!--6-->
                        <td></td>
                        <td colspan="6" rowspan="2"><bUtton id="d_b" class="usable" onclick="setItem('공용테이블 2');">공용 테이블 2</button></td>
                        <td></td>
                        <td colspan="2" rowspan="2"><button id="c_c" class="usable" onclick="setItem('스터디룸 5');">스터디룸 5</button></td>
                    </tr>
                    <tr> <!--7-->
                        <td></td> <td></td>
                    </tr>
                    <tr> <!--8-->
                        <td></td> <td></td> <td></td> <td></td> <td></td>
                        <td></td> <td></td> <td></td> 
                        <td colspan="2" rowspan="2"><button id="c_d" class="usable" onclick="setItem('스터디룸 6');">스터디룸 6</button></td>
                    </tr>
                    <tr> <!--9-->
                        <td></td> <td></td> <td></td> <td></td> <td></td>
                        <td></td> <td></td> <td></td> <td></td> <td></td>
                    </tr>
                    <tr> <!--10-->
                         <td class="notUse" colspan="2">카운터</td>
                        <td></td> <td></td>
                        <td class="notUse" colspan="3">입구</td>
                        <td></td> <td></td> <td></td> <td></td>
                    </tr>
                </table>
            <div class="inputBox">
                <form name="inquiry_seat" method="post">
                    <fieldset>
                        <legend>날짜 선택</legend>
                        <p>원하시는 날짜를 선택하세요<br>(한달 내에서만 선택 가능)</p>
                        <input type="text" id="inquiryDate" name="date" value="<%=request.getParameter("date")%>" style="width: 150px;"/>
                    </fieldset>
                    <fieldset>
                        <legend>타임 선택</legend>
                        <p>원하시는 타임을 선택하세요<br>(3시간 단위 4개 타임)</p>
                        <select id="inquiryTime" name="time" style="width: 160px;">
                            <option value="1" selected>Time- 1 (10:00~13:00)</option>
                            <option value="2">Time- 2 (13:00~16:00)</option>
                            <option value="3">Time- 3 (16:00~19:00)</option>
                            <option value="4">Time- 4 (19:00~22:00)</option>
                        </select>
                    </fieldset>
                    <input type="submit" class="inquiry_seat_submit" value="좌석 조회" onclick="test()"/>
                </form>
            </div>
        </div>
        
        <div class="downside">
            <div class="selected">
                <table class="choosenLayer">
                    <tr>
                        <td>선택 날짜:</td><td id="cDate"><%=request.getParameter("date")%></td>
                    </tr>
                    <tr>
                        <td>선택 시간:</td><td id="cTime"><%=request.getParameter("time")%></td>
                    </tr>
                    <tr>
                        <td>선택 좌석:</td><td id="cSeat"></td>
                    </tr>
                </table>
            </div>
            <input type="radio" name="abc" value="dsfasf">
            <div class="letReserve">
                <input type="submit" value="예약하기">
                </form>
            </div>
        </div>
    </div>
</body>
</html>