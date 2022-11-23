function madLib(verb,adj,noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`)
}

//madLib('make', 'best', 'guac');

function isSubstring(search_string, sub_string) {
    if(search_string.length > sub_string.length)  {
        for (let i = 0; i < search_string.length; i++) {
            let j = 0;
            let y = i;
            while (j < sub_string.length) {
                if (sub_string[j] !== search_string[y]) {
                    break;
                }
                y++;
                j++;
            }
            if (j === sub_string.length) {
                return true
            }
        } 
    }
    return false
}

//console.log(isSubstring("time to program", "time"))
//console.log(isSubstring("Jump for joy", "joys"))

//fizz buzz
function fizzBuzz(array) {
    let ret = []
    for (let i = 0; i < array.length; i++) {
        if(array[i] % 5 === 0 && array[i] % 3 === 0) {
            continue;
        } else if (array[i] % 5 === 0 || array[i] % 3 === 0){
            ret.push(array[i])
        }
    }
    return ret;
}

//console.log(fizzBuzz([3,5,15]))

function isPrime(num) {
    for (let i = 0; i < num; i++) {
        
    }
}