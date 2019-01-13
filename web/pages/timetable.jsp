<%-- 
    Document   : timetable
    Created on : Aug 6, 2018, 7:17:33 PM
    Author     : Akash Raval < rvlaakash@gmail.com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       
        <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#999; }
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
.tg .tg-audg{font-weight:bold;font-size:17px;font-family:Arial, Times, serif !important;;text-align:center}
.tg .tg-1fyo{background-color:#D2E4FC;font-size:14px;font-family:Arial, Times, serif !important;}
.tg .tg-wvtc{font-size:15px;font-family:Arial, Times, serif !important;}
.tg .tg-saqj{font-size:15px;font-family:Arial, Helvetica, sans-serif !important;}
</style>

        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time table</title>
    </head>
    <body>
        
        
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#999; }
.tg td{font-family:Arial, sans-serif;font-size:11px;padding:5px 2px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
.tg th{font-family:Arial, sans-serif;font-size:11px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
.tg .tg-fi2x{background-color:#e6cd9b;border-color:inherit;text-align:center}
.tg .tg-4bbq{background-color:#e6cd9b;border-color:inherit;text-align:center}
.tg .tg-5986{background-color:#ffffff;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-uys7{border-color:inherit;text-align:center}
.tg .tg-laxj{background-color:#D2E4FC;border-color:inherit;text-align:center}
.tg .tg-dfcf{background-color:#ffffff;border-color:inherit;text-align:center}
.tg .tg-svo0{background-color:#D2E4FC;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-28l8{background-color:#ffffff;border-color:inherit;text-align:center}
.tg .tg-tv06{background-color:#d2e4fc;border-color:inherit;text-align:center}
.tg .tg-zwf7{background-color:#d2e4fc;border-color:inherit;text-align:center;vertical-align:top}
</style>
<table class="tg" style="table-layout: fixed; width: 100%; margin-top: 32px; margin-bottom: 5px">
<colgroup>
<col style="width: 50px">
<col style="width: 70px">
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">
</colgroup>
  <tr>
    <th class="tg-uys7">Slot</th>
    <th class="tg-uys7">Sr No.</th>
    <th class="tg-uys7">MON</th>
    <th class="tg-c3ow">TUE</th>
    <th class="tg-c3ow">WED</th>
    <th class="tg-c3ow">THU</th>
    <th class="tg-c3ow">FRI</th>
    <th class="tg-c3ow">SAT</th>
  </tr>
  <tr>
    <td class="tg-dfcf" rowspan="2">1</td>
    <td class="tg-dfcf">1</td>
    <td class="tg-dfcf">AJP<br>(PCP)</td>
    <td class="tg-5986">WT/WAD<br>(MSP)/(SVP)</td>
    <td class="tg-svo0" rowspan="2">A1 WT<br>(ABG1)(VPP)<br><br>A2 DM<br>(BS-8)(ABP)<br><br>A3 MPI<br>(ABF3)(PSS)</td>
    <td class="tg-5986">SP<br>(PCP)</td>
    <td class="tg-svo0" rowspan="2">A1 SP<br>(ABF2)(RRC)<br><br>A2 IA<br>(ABF3)(PSS)<br><br>A3 DAA<br>(ABG3)(PGP)</td>
    <td class="tg-5986">-</td>
  </tr>
  <tr>
    <td class="tg-uys7">2</td>
    <td class="tg-uys7">DAA<br>(PGP)</td>
    <td class="tg-c3ow">IA/MPI<br>(PSS)(KCS)</td>
    <td class="tg-c3ow">AJP<br>(KCS)</td>
    <td class="tg-c3ow">-</td>
  </tr>
  <tr>
    <td class="tg-4bbq" colspan="8">BREAK</td>
  </tr>
  <tr>
    <td class="tg-28l8" rowspan="2">2</td>
    <td class="tg-uys7">3</td>
    <td class="tg-tv06" rowspan="2">A1 DAA<br>(ABF3)(PGP)<br><br>A2 SP<br>(ABF2)(PCP)<br><br>A3 DM<br>(BS-8)(ABP)<br></td>
    <td class="tg-c3ow">DAA<br>(PGP)</td>
    <td class="tg-c3ow">SP<br>(PCP)</td>
    <td class="tg-zwf7" rowspan="2">A1 IA<br>(ABF3)(PSS)<br><br>A2 DAA<br>(ABF2)(PGP)<br><br>A3 SP<br>(ABG3)(SDP)</td>
    <td class="tg-c3ow">AJP<br>(KCS)</td>
    <td class="tg-c3ow">-</td>
  </tr>
  <tr>
    <td class="tg-dfcf">4</td>
    <td class="tg-5986">AJP<br>(PCP)</td>
    <td class="tg-5986">DAA<br>(PGP)</td>
    <td class="tg-5986">WT/WAD<br>(MSP)/(SVP)<br></td>
    <td class="tg-5986">-</td>
  </tr>
  <tr>
    <td class="tg-fi2x" colspan="8">BREAK</td>
  </tr>
  <tr>
    <td class="tg-dfcf" rowspan="2">3</td>
    <td class="tg-dfcf">5</td>
    <td class="tg-laxj" rowspan="2">A1 MP<br>(ABG3)(PSS)<br><br>A2 MP<br>(ABG4)(PCP)<br><br>A3 MP<br>(ABG5)(GVP)<br><br></td>
    <td class="tg-svo0" rowspan="2">A1 AJP<br>(ABG4)(PCP)<br><br>A2 WT<br>(ABG1)(VPP)<br><br>A3 AJP<br>(ABG2)(DRS)</td>
    <td class="tg-5986">IA/MPI<br>(PSS)(KCS)<br></td>
    <td class="tg-svo0" rowspan="2">A1 DM<br>(BS-8)(ABP)<br><br>A2 AJP<br>(ABG2)(KCS)<br><br>A3 WAD<br>(ABG1)(VPP)</td>
    <td class="tg-5986">SP<br>(PCP)</td>
    <td class="tg-5986">-</td>
  </tr>
  <tr>
    <td class="tg-uys7">6</td>
    <td class="tg-c3ow">WT/WAD<br>(MSP)/(SVP)</td>
    <td class="tg-c3ow">DM<br>(ABP)</td>
    <td class="tg-c3ow">-</td>
  </tr>
</table>
        
        
        
        
        
       <table class="tg" style="float: right; table-layout: fixed; width: 100%">
<colgroup>
<col style="width: 100px ; ">
<col style="width: 80px; ">
</colgroup>
  <tr>
    <th class="tg-audg">SUBJECT ABBEVIATION:</th>
    <th class="tg-audg">FACULTY ABBEVIATION:</th>
  </tr>
  <tr>
    <td class="tg-1fyo">AJP: Advance Java Programming</td>
    <td class="tg-1fyo">KCS(Krunal C. Suthar),<br/> PCP(Prem C. Patel)</td>
  </tr>
  <tr>
    <td class="tg-wvtc">DAA: Design And Analysis of Algorithm</td>
    <td class="tg-wvtc">PGP(Part G. Prajapati)</td>
  </tr>
  <tr>
    <td class="tg-1fyo">SP: System Programming</td>
    <td class="tg-1fyo">PCP(Prem C. Patel),<br/> RRC(Rupal R. Chaudhary),<br>SDP(Shailesh D. Patel) </td>
  </tr>
  <tr>
    <td class="tg-wvtc">WAD: Web Application and Development<br>(CE Students)</td>
    <td class="tg-wvtc">SVP(Shakti V. Patel), <br/>VPP(Vishal P. Patel)</td>
  </tr>
  <tr>
    <td class="tg-1fyo">WT: Web Technology<br>(IT Students)</td>
    <td class="tg-1fyo">MSP(Meshul S. Patel),<br/> VPP(Vishal P. Patel)</td>
  </tr>
  <tr>
    <td class="tg-wvtc">IA: Interfacing and Application</td>
    <td class="tg-wvtc">PSS(Piyush S. Sutahr)</td>
  </tr>
  <tr>
    <td class="tg-1fyo">MP: Mini Project-1</td>
    <td class="tg-1fyo">PCP(Prem C. Patel),<br/> GVP(Govind V. Patel),<br> PSS(Piyush S. Suthar)</td>
  </tr>
  <tr>
    <td class="tg-wvtc">DM: Disaster Management</td>
    <td class="tg-saqj">ABP(Akshay B. Patel)</td>
  </tr>
</table>













    </body>
</html>
