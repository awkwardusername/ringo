/**
 * Created with IntelliJ IDEA.
 * User: hoshi~
 * Date: 3/31/13
 * Time: 12:22 AM
 * To change this template use File | Settings | File Templates.
 */

Number.prototype.format = function(digits, isLeftPad) {
    if(isLeftPad === undefined)
        isLeftPad = true;
    var _x = this.toString();
    for(var i = digits; i > 0; i--)
        if(_x.length < digits)
            _x = isLeftPad? ("0" + _x) : (_x + "0");
    return _x;
}

var RinGoUi = function(i) {
    var instances = i === undefined? [] : i;

    return {
        hookInstance: function(i) {
            instances.push(i);
        },

        unhookInstance: function(i) {
            var remainingInstances = [];
            for(var ringoInstance in instances)
                if(ringoInstance != i)
                    remainingInstances.push(ringoInstance);
        },

        doScroll: function(value) {
            for(var instance in instances) {
                instance.offset(value);
            }
        }
    };
};

var RinGoUiObject = new RinGoUi();
