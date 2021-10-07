const fact = n =>{
    let k=1;
    for(let i=1;i<=n;i++){
        k=k*i;
    }
    return k;   
};

const permutation = (n,r) =>{
    return fact(n)/fact(n-r);
};

const combination = (n,r) =>{
    return fact(n)/(fact(n-r)*fact(r));
};

const multiPermutarion = (n,r) =>{
    return n**r;
};

const multiCombination = (n,r) =>{
    return combination(n+r-1,r);
};

module.exports = {
    permutation,
    combination,
    multiCombination,
    multiPermutarion,
}