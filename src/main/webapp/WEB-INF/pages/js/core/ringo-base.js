/**
 * ringo-base
 * Description:   Defines the class for a RinGo instance.
 * Project:       RinGo
 *
 * Written by:    Temoto-kun
 * Website:       http://nihilist-philanthropy.co.cc
 * E-mail:        kiiroifuriku(at)hotmail(dot)com
 *
 * Date:          2013 April 05   01:42
 */

var RinGo = RinGo || {};

/**
 * RinGo
 *
 * - static class.
 * - all of its members are static.
 */

// TODO:
	/*
	 * public static class RinGo {
	 *  private:
	 *      static Object scroller;
	 *      static Object viewport;
	 *      static boolean enabled;
	 *      static Date date;
	 *      static int user;
	 *
	 *      static clearDateScroller();
	 *      static showDateScrollerDates();
	 *      static doRepaint();
	 *      static setDate();
	 *      static hideScroller();
	 *      static showScroller();
	 *
	 *
	 *      static scrollerVisible;
	 *      static animSpeed;
	 *      static hideDelay;
	 *  public:
	 *      static attach();
	 *      static detach();
	 *      static isEnabled();
	 *      static setEnabled();
	 *      static getDate();
	 *      static offset();
	 *      static repaint();
	 *      static getUser();
	 *      static getScroller();
	 *      static getViewport();
	 *      static getHideDelay();
	 *      static setHideDelay();
	 *      static getAnimSpeed();
	 *      static setAnimSpeed();
	 * }
	 *
	 */

// JavaScript cannot implement `public static` and `private static` members in a single class :C
// In short...no `true Singleton` :C
// Uses a single instance instead. Adding another instance is Quirks Mode (but I think that
// could be experimental
RinGo.Instance = function() {
	/* ====== *
	 * Fields *
	 * ====== */

	// Class definition
	var scroller = null;
	var viewport = null;
	var usernameText = null;
	var enabled = false;
	var date = Number(new Date()); // TODO fetch date from server
	var user = null;

	// UI
	var scrollerVisible = false;
	var animSpeed = 250;
	var hideDelay = 1500;

	/* =============== *
	 * Private Methods *
	 * =============== */

	var clearDateScroller = function() {
		for(var n = scroller.firstChild; n != null; n = n.nextSibling)
			if(n.nodeType == Node.ELEMENT_NODE) {
				scroller.removeChild(n);
				n = scroller.firstChild;
			}
	};

	var showDateScrollerDates = function() {
		var year = document.createElement("span");
		year.setAttribute("id", "year");
		year.setAttribute("class", "year");

		year.appendChild(document.createTextNode(new Date(date).getFullYear()));
		scroller.appendChild(year);

		var dates = document.createElement("ul");
		dates.setAttribute("id", "dates");
		dates.setAttribute("class", "dates");

		var _date = new Date(date);
		for(var i = -3; i <= 3; i++) {
			// date element
			var d = document.createElement("li");
			var dateId = "date" + (i < 0? "" : "+") + i;
			var offset = new Date(
				_date.getFullYear(),
				_date.getMonth(),
				_date.getDate() + i,
				0,
				0,
				0
			);

			d.setAttribute("class", dateId);
			d.setAttribute("id", dateId);

			// day text
			var dy = document.createElement("span");
			dy.setAttribute("class", "day");
			var dy_t = document.createTextNode(offset.getDate().toString());
			dy.appendChild(dy_t);

			var monthNames = [
				"Jan", "Feb", "Mar",
				"Apr", "May", "Jun",
				"Jul", "Aug", "Sep",
				"Oct", "Nov", "Dec"
			];

			// month text
			var mnth = document.createElement("span");
			mnth.setAttribute("class", "month");
			var mnth_t = document.createTextNode(monthNames[offset.getMonth()]);
			mnth.appendChild(mnth_t);

			d.appendChild(dy);
			d.appendChild(mnth);

			dates.appendChild(d);
		}

		scroller.appendChild(dates);
	};

	var doRepaint = function() {
		clearDateScroller();
		showDateScrollerDates();
	};

	var setDate = function(d) {
		if(d instanceof Date || d instanceof Number) {
			date = Number(d);
			doRepaint();
		}
		else
			throw "setDate() only accepts numeric values.";
	};

	var doSetScrollerVisible = function(b) {
		if(!$(usernameText).hasClass('animated')) {
			$(RinGo.getScroller()).fadeOut(animSpeed);
			$(usernameText).dequeue().stop().addClass('animated').animate({
				bottom: b? 0 : '-' + $("#" + RinGo.getScroller().id + " > *").css("height")
			}, animSpeed, function() {
				scrollerVisible = b;
				$(usernameText).removeClass('animated');
			});
		}
	}

	return {
		/* ============== *
		 * Public Methods *
		 * ============== */

		//
		//
		//
		// Instance-related methods
		// ------------------------

		/**
		 * Attach the current instance to components.
		 * @param s the scroller object/ID
		 * @param u the username text object/ID
		 * @param v the viewport object/ID
		 * @param r should the attached components be repainted once attached?
		 */
		attach: function(s, u, v, r) {
			scroller = (typeof(s) == "string"? document.getElementById(s) : s);
			usernameText = (typeof(u) == "string"? document.getElementById(u) : u);
			viewport = (typeof(v) == "string"? document.getElementById(v) : v);

			if(r !== undefined && Boolean(r))
				this.repaint();
		},

		/**
		 * Detach the currently attached components.
		 */
		detach: function() {
			this.attach(null, null, null, false);
		},

		/**
		 * Is the current instance enabled?
		 * @return {boolean} Is the current instance enabled?
		 */
		isEnabled: function() {
			return enabled;
			// Enabling/disabling of the instance could be good for temporary halting of RinGo's
			// Process, e.g. displaying a modal dialog.
		},

		/**
		 * Sets the current instance enabled status.
		 * @param b the enabled status: true to enable, false to disable.
		 */
		setEnabled: function(b) {
			// Try parse the parameter to Boolean.
			enabled = Boolean(b);
		},

		//
		//
		//
		// Date-related methods
		// --------------------

		/**
		 * Gets the current selected date of the instance.
		 * @return {Date} The current selected date.
		 */
		getDate: function() {
			return new Date(date);
		},

		/**
		 * Adds milliseconds to the current date.
		 * @param o The offset
		 */
		offset: function(o) {
			setDate(date + o);
		},

		//
		//
		//
		// Graphics-related methods
		// ------------------------

		/**
		 * Repaints the components attached to this instance.
		 */
		repaint: function() {
			if(this.isEnabled())
				doRepaint();
		},

		/**
		 * Gets the hide delay of the scroller.
		 * @return {number} The hide delay of the scroller.
		 */
		getHideDelay: function() {
			return hideDelay;
		},

		/**
		 * Sets the hide delay of the scroller.
		 * @param d The hide delay of the scroller.
		 */
		setHideDelay: function(d) {
			hideDelay = d;
		},

		//
		//
		//
		// Session-related methods
		// -----------------------

		/**
		 * Gets the currently logged on user's ID.
		 * @return {number} The user object.
		 */
		getUser: function() {
			// return the JavaScript representation (persistence) of the user details fetched from
			// the database.
			return user;
		},

		/**
		 * "Login" the user to the current RinGo instance.
		 * @param u The user object.
		 */
		login: function(u) {
			user = u; // TODO hook from session
		},

		/**
		 * "Logout" the user from the current RinGo instance.
		 */
		logout: function() {
			this.login(null); // TODO hook from session
		},

		addSquare: function(s) {
			user.addSquare(s);
			doRepaint();
		},

		removeSquare: function(s) {

		},

		//
		//
		//
		// Component-related methods
		// ------------------------

		/**
		 * Gets the scroller object attached to this instance.
		 * @return {Object} The scroller object.
		 */
		getScroller: function() {
			return scroller;
		},

		/**
		 * Gets the viewport object attached to this instance.
		 * @return {Object} The viewport object.
		 */
		getViewport: function() {
			return viewport;
		},

		/**
		 * Gets a value to determine if the scroller is visible.
		 * @return {boolean} The visibility of the scroller.
		 */
		isScrollerVisible: function() {
			return scrollerVisible;
		},

		/**
		 * Sets the visibility of the scroller.
		 * @param b The visibility of the scroller.
		 */
		setScrollerVisible: function(b) {
			if(this.isEnabled())
				doSetScrollerVisible(b);
			// TODO make scroller clickable/draggable to go to a specific date

			// TODO make header position fixed

			// TODO overlay form/sidebar when square is clicked
		}
	};
};

RinGo.InstanceImpl = (function() { return new RinGo.Instance(); })(window);
