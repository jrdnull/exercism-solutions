var Bob = function() {
    this.hey = function(message) {
        if (empty(message)) {
            return 'Fine. Be that way!';
        } else if (yelling(message)) {
            return 'Woah, chill out!';
        } else if (question(message)) {
            return 'Sure.';
        }
        return 'Whatever.';
    };

    var question = function(message) {
        return message.charAt(message.length - 1) === '?';
    };

    var yelling = function(message) {
        return message.toUpperCase() === message
            && message.toLowerCase() !== message.toUpperCase();
    };

    var empty = function(message) {
        return message.trim().length === 0
    };
};