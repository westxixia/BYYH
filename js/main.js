$(function () {
	$("#ctl00_MainContent_txtSelectDate").datepicker({
		showOn: "button",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true,
		firstDay: 7,
		dateFormat: 'yymmdd',
		onClose: function (selectedDate) {
			$("#ctl00_MainContent_hdfSelectDate")[0].value = selectedDate;
		}
	});
});

Sys.Application.add_init(function () {
	var prm = Sys.WebForms.PageRequestManager.getInstance();
	prm.add_endRequest(function () {
		$(function () {
			$("#ctl00_MainContent_txtSelectDate").datepicker({
				showOn: "button",
				buttonImage: "images/calendar.gif",
				buttonImageOnly: true,
				firstDay: 7,
				dateFormat: 'yymmdd',
				onClose: function (selectedDate) {
					$("#ctl00_MainContent_hdfSelectDate")[0].value = selectedDate;
				}
			});
		});
	});
});