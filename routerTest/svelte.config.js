const preprocess = require('svelte-preprocess');

module.exports = {
    vitePlugin: {
        disableDependencyReinclusion: ['@roxi/routify'],
        exclude: [],
        // experimental options
        experimental: {}
    },
    
    preprocess: [
        preprocess(),
    ],
};
