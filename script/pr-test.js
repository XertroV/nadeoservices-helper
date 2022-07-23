const metadataParser = require('markdown-yaml-metadata-parser'),
    fs = require('fs'),
    path = require('path'),
    directoryTree = require('directory-tree'),
    docPath = path.join(__dirname, '../docs/'),
    requiredKeys = [
        "audience",
        "url",
        "route",
        "description",
        "method"
    ];

let tree = directoryTree(docPath, {extensions: /\.md$/, attributes: ['type']}),
    files = [],
    loopAddFiles = (child)=>{
        child.children.forEach(c=>{
            if(c.type === 'file'){
                files.push(c);
            } else if (c.type === "directory") {
                loopAddFiles(c);
            }
        });
    };

tree.children.forEach(loopAddFiles);

files.forEach(fileToTest=>{
    console.log("Testing", fileToTest.path.substring(docPath.length).replace(/\\/g, '/'));

    let parsed = metadataParser(fs.readFileSync(fileToTest.path, 'utf8')).metadata;

    requiredKeys.forEach(k=>{
        if (!k in parsed) {
            console.error("The required meta key", k, "is not found when parsing the file");
            process.exit(2);
        }
    })

    if (parsed["parameters"]) {
        const exceptedKeysParameters = [
            "path",
            "query"
        ],
        requiredKeysParameters = [
            "name",
            "type",
            "description",
            "required"
        ],
        exceptedValuesTypeParameter = [
            "string",
            "integer",
            "boolean"
        ];

        Object.keys(parsed["parameters"]).forEach(p=>{
            if (!exceptedKeysParameters.includes(p)) {
                console.error("The parameter key", p, "is not expected, please remove that key. Excepted values:", exceptedKeysParameters);
                process.exit(3);
            }

            requiredKeysParameters.forEach(kp=>{
                parsed["parameters"][p].forEach(p=>{
                    if (!kp in p) {
                        console.error("The required parameter key", kp, "is not found on parameter", p, "when parsing the file");
                        process.exit(4);
                    }

                    if (!exceptedValuesTypeParameter.includes(p["type"])) {
                        console.error("The parameter type", p["type"], "is not expected. Excepted values:", exceptedValuesTypeParameter);
                        process.exit(5);
                    }
                });
            });
        });
    }
});

console.log("All good!");