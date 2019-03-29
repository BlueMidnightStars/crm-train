const model = require('./base.js');
class mood extends model {
    constructor(props = 'clue_log') {
        super(props)
    }
}
module.exports = mood;