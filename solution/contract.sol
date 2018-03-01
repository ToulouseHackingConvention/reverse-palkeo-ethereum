pragma solidity ^0.4.0;
contract THCon {
    function win(bytes23 flag) public {
        uint8 seed = 42;
        for(uint8 i = 0; i < 23; i++) {
            flag ^= bytes23(seed) << (i * 8);
            seed = seed * 7 + 3;
        }
        if (flag == "stack machines are fun.") {
            seed++;
        }
        if (flag == "\x061\x19J\x95\x06\x9d~\x01,\x19y]\x0c\\L\xcdJ\xf1\x98NEW") {
            suicide(msg.sender);
        }
        if (flag == "?lirhtym ro ,etneyo yrT") {
            seed++;
        }
    }
}
