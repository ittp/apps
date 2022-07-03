const axios = require("axios");

module.exports.handler = async function (event) {
    
    const response = await axios('https://cloud.yandex.ru/')
    const body = response.data
   
//     const body     = await response.text();
    
    return {
        code: response.status,
        body: body
    };
    
};
