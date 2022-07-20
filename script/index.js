const showdown = require('showdown'),
    converter = new showdown.Converter({metadata: true}),
    directoryTree = require('directory-tree'),
    fs = require('fs'),
    path = require('path'),
    docPath = path.join(__dirname, '../docs/');

let allFilesCategorized = {},
    root = {
        baseUrl: {
            Live: "https://live-services.trackmania.nadeo.live",
            Club: "https://club.trackmania.nadeo.club",
            Competition: "https://competition.trackmania.nadeo.club",
            Matchmaking: "https://matchmaking.trackmania.nadeo.club",
        }
    };

(async () => {
    let tree = directoryTree(docPath, {extensions: /\.md$/, attributes: ['type']});

    function dirChild(c) {
        return c.map(child=>{
            let files = [], dirs = [];
            child.children.forEach(c=>{
                if(c.type === 'file'){
                    converter.makeHtml(fs.readFileSync(c.path, 'utf8'));
                    c.meta = converter.getMetadata();
                    files.push(c);
                }
                else if(c.type === 'directory'){
                    dirs.push(c);
                }
            });
            return {
                name: child.name,
                routes: files.map(f=>{
                    return {
                        name: f.name.substring(0, f.name.indexOf('.')),
                        path: f.path.substring(docPath.length).replace(/\\/g, '/'),
                        meta: f.meta,
                    }
                }),
                subCategories: dirChild(dirs),
            }
        })
    }

    tree.children.forEach(child=>{
        allFilesCategorized[child.name] = dirChild(child.children);
    });

    root.categories = allFilesCategorized;

    fs.writeFileSync('./api/docs.json', JSON.stringify(root, null, 4));
    console.log(root);
})();