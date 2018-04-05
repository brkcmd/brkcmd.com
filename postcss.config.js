module.exports = (ctx) => ({
    plugins: [
        require('postcss-import')({
            root: ctx.file.dirname,
        }),
        require('postcss-url'),
        require('postcss-cssnext'),
        // require('cssnano'),
    ]
})
