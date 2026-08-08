const fs = require('fs');
const path = require('path');

const dir = 'd:/August Websites/Supermarket & Daily Grocery Store';
const files = fs.readdirSync(dir).filter(f => f.endsWith('.html'));
let count = 0;

files.forEach(file => {
    const p = path.join(dir, file);
    let c = fs.readFileSync(p, 'utf8');
    
    const newC = c.replace(/style="([^"]*)"/g, (m, inner) => {
        let newInner = inner.replace(/(^|[;\s])left\s*:/g, '$1inset-inline-start:');
        newInner = newInner.replace(/(^|[;\s])right\s*:/g, '$1inset-inline-end:');
        return `style="${newInner}"`;
    });
    
    if(c !== newC){
        fs.writeFileSync(p, newC);
        count++;
    }
});

console.log('Updated ' + count + ' HTML files with logical inline properties.');
