
const model = require('./base.js');
class mood extends model {
    constructor(props = 'user') {
        super(props)
    }
}
console.log(mood);
module.exports = mood;