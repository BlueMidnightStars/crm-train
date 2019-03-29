const model = require('./base.js');
class mood extends model {
    constructor(props = 'user') {
        super(props)
    }
}
module.exports = mood;