/**
 * Created by camel on 2017/1/16 0016.
 */

$(function() {
	// ////////////////////////////////////////////////////

	var className;
	$('.combo_wrap_btn div').hover(function() {
		className = $(this).attr('class').split(' ');
		switch (className[0]) {
		case 'combo_wrap_btn_1':
			// 执行代码块 1
			$(this).addClass('bg_btn_1');
			break;
		case 'combo_wrap_btn_2':
			// 执行代码块 1
			$(this).addClass('bg_btn_2');
			break;
		case 'combo_wrap_btn_3':
			// 执行代码块 1
			$(this).addClass('bg_btn_3');
			break;
		case 'combo_wrap_btn_4':
			// 执行代码块 1
			$(this).addClass('bg_btn_4');
			break;
		case 'combo_wrap_btn_5':
			// 执行代码块 1
			$(this).addClass('bg_btn_5');
			break;
		case 'combo_wrap_btn_6':
			// 执行代码块 1
			$(this).addClass('bg_btn_6');
			break;

		default:
			// n 与 case 1 和 case 2 不同时执行的代码

		}
	}, function() {

		className = $(this).attr('class').split(' ');

		switch (className[0]) {
		case 'combo_wrap_btn_1':
			// 执行代码块 1
			$(this).removeClass('bg_btn_1');

			break;
		case 'combo_wrap_btn_2':
			// 执行代码块 1
			$(this).removeClass('bg_btn_2');
			break;
		case 'combo_wrap_btn_3':
			// 执行代码块 1
			$(this).removeClass('bg_btn_3');
			break;
		case 'combo_wrap_btn_4':
			// 执行代码块 1
			$(this).removeClass('bg_btn_4');
			break;
		case 'combo_wrap_btn_5':
			// 执行代码块 1
			$(this).removeClass('bg_btn_5');
			break;
		case 'combo_wrap_btn_6':
			// 执行代码块 1
			$(this).removeClass('bg_btn_6');
			break;

		default:
			// n 与 case 1 和 case 2 不同时执行的代码

		}
	});

	$('.fansWrap_footer li img').hover(function() {
		$(this).addClass(' tada  animated')
	}, function() {
		$(this).removeClass(' tada  animated')
	});

	var value1;
	$('.erp_bottom li').hover(function() {

		value1 = $(this).find('span').html();
		$(this).addClass('checkederp');
		var value2 = '查看详情';
		$(this).find('span').html(value2);

	}, function() {
		$(this).removeClass('checkederp');
		$(this).find('span').html(value1);
	});
	var dis = 525;
	var top1 = parseInt($('.fansicon_1').position().top) - dis;
	var top2 = parseInt($('.fansicon_2').position().top) - dis;
	var top3 = parseInt($('.fansicon_3').position().top) - dis;

	$(window).scroll(function() {

		var st = parseInt($(this).scrollTop());

		if (st >= top1 && st < top2) {

			$('.fansicon_1').addClass('animated fadeInRight');
			$('.fansicon_1').siblings().find('h1').css('opacity', 1)
			$('.fansicon_1').siblings().find('p').css('opacity', 1)
		} else if (st >= top2 && st < top3) {
			$('.fansicon_2').addClass('animated fadeInLeft');
			$('.fansicon_2').siblings().find('h1').css('opacity', 1)
			$('.fansicon_2').siblings().find('p').css('opacity', 1)
		} else if (st >= top3) {
			$('.fansicon_3').addClass('animated fadeInRight');
			$('.fansicon_3').siblings().find('h1').css('opacity', 1)
			$('.fansicon_3').siblings().find('p').css('opacity', 1)
		}
	});

});// ///////////////////////////////
