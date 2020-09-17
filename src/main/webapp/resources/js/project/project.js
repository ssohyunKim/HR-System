$(function () {
           $('#fromDate').datetimepicker();
           $('#toDate').datetimepicker({
               useCurrent: true
           });
           $("#fromDate").on("change.datetimepicker", function (e) {
               $('#toDate').datetimepicker('minDate', e.date);
           });
           $("#toDate").on("change.datetimepicker", function (e) {
               $('#fromDate').datetimepicker('maxDate', e.date);
           });
       });