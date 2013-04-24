/**
 * json-xml
 * Description:   File containing converters from JSON to XML and vice versa.
 *
 * Project:       RinGo
 *
 * Written by:    Temoto-kun
 * Website:       http://nihilist-philanthropy.co.cc
 * E-mail:        kiiroifuriku(at)hotmail(dot)com
 *
 * Date:          2013 April 14   08:28
 */

var JsonToXmlConverter = function() {
	return {
		convertToXml: function(json) {
			if(typeof(json) == "string")
				json = new Object(eval(json));
			// TODO constructing XML from scratch using JS
			// TODO how to get the member names of the object.
		}
	};
}

var XmlToJsonConverter = function() {
	return {
		convertToJson: function(xml) {
			if(typeof(xml) == "string") {
				// TODO parse XML
			}
			var root = xml.documentElement;
			var name = root.tagName;

			// TODO walk the XML document.
		}
	};
}
