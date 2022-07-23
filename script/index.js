const metadataParser = require('markdown-yaml-metadata-parser'),
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
                    const parsed = metadataParser(fs.readFileSync(c.path, 'utf8'));
                    c.meta = parsed.metadata;
                    c.content = parsed.content;
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
                        name: f.name.substring(0, f.name.match(/\.md$/).index),
                        path: f.path.substring(docPath.length).replace(/\\/g, '/'),
                        meta: f.meta,
                        content: f.content
                    }
                }),
                subCategories: dirChild(dirs),
            }
        })
    }

    tree.children.forEach(child=>{
        if (child.name == "NadeoClubServices") {
            allFilesCategorized[child.name] = {};
            child.children.forEach(c=>{
                allFilesCategorized[child.name][c.name] = dirChild(c.children);
            });
        } else {
            allFilesCategorized[child.name] = dirChild(child.children);
        }
    });

    root.categories = allFilesCategorized;

    console.log(JSON.stringify(root, null, 2));
    fs.writeFileSync('./api/docs.json', JSON.stringify(root, null, 4));
})();