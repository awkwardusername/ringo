/**
 * js-ext
 * Description:   Some very little but useful JavaScript extension objects.
 * Project:       RinGo
 *
 * Written by:    Temoto-kun
 * Website:       http://nihilist-philanthropy.co.cc
 * E-mail:        kiiroifuriku(at)hotmail(dot)com
 *
 * Date:          2013 April 07   12:50
 */


(function() {
	/**
	 * Pads a number.
	 * @param digits    The number of digits to pad.
	 *                  By default, this pads the number to the left.
	 *                  Negative values pad the number to the right.
	 *                  A value of 0 returns an empty string.
	 * @param padChar   The padding character to use.
	 *                  If padChar is not defined, it assumes it is the character zero (0).
	 * @return {string} The padded number.
	 */
	Number.prototype.pad = function(digits, padChar) {
		var _x = "";

		if(digits == 0)
			return _x;
		_x = this.toString();

		if(padChar === undefined)
			padChar = "0";

		for(var i = _x.length; i < Math.abs(digits); i++)
			_x = digits > 0? padChar + _x : _x + padChar;
		return _x;
	};
}(window));
