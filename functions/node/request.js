const fetch = require("node-fetch");

module.exports.handler = async function (event) {
    
    const response = await fetch('https://cloud.yandex.ru/');
    const body     = await response.text();
    
    return {
        code: response.status,
        body: body
    };
    
};
