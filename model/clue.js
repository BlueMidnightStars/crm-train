
const model = require('./base.js');
class mood extends model {
    constructor(props = 'clue') {
        super(props)
    }
}
console.log(mood);
module.exports = mood;