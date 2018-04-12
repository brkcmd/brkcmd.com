module.exports = (ctx) => ({
    plugins: [
        require('postcss-import')({
            root: ctx.file.dirname,
        }),
        require('postcss-url')([
            { filter: '**/fonts/*', url: (asset) => asset.url },
        ]),
        require('postcss-cssnext'),
        // require('cssnano'),
    ]
})
