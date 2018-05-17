pragma solidity ^0.4.0;
contract SingleNumRegister {
    uint storedData;
    function set(uint x) public{
        storedData = x;
    }

    function get() public view returns (uint retVal){
        return storedData;
    }
}

// データ型
contract ValTypeTest {

    // 値渡しの例
    function valType() public view returns (uint retVal){
        uint a;
        a = 10;
        uint b = a;
        b = 20;
        return a; // result shows 10
    }

    // 参照渡しの例
    function refType() public view returns (uint[2] retVal){
        uint[2] x;
        x[0] = 100;
        x[1] = 200;
        uint[2] y = x;
        y[0] = 500;
        y[1] = 600;
        return x; // result shows [500,600]
    }

    // 符号付き整数型
    int16 a = -10; // 16bitの符号付き整数型を宣言して「-10」を格納
    int b = 100;   // 256bitの符号付き整数型を宣言して「100」を格納
    int c; // 代入を行わないとデフォルト値「0」が格納される

    // 符号なし整数型
    uint16 a = 10;  // 16bitの符号なし整数型を宣言して「10」を格納
    uint b = 100;   // 256bitの符号なし整数型を宣言して「100」を格納
    uint c; // 代入を行わないとデフォルト値「0」が格納される
    uint d = -10;   // 【コンパイルエラー】uint型に負の値は格納負荷

    // 真偽値
    bool a = true;  // 真偽値を宣言して「true」を格納
    bool b = false;  // 真偽値を宣言して「false」を格納
    bool c; // 代入を行わないとデフォルト値「false」が格納される

    // アドレス型
    // EOAやContractの20バイトの長さのアドレスを格納する型
    address a = 0xabc; // "0x0000000000000000000000000000000000000abc"のアドレス値が格納される
    address b; // デフォルト値は"0x0000000000000000000000000000000000000000"

    // balance属性
    // アドレス型のプロパティ
    // 指定のアドレスが保有するetherの量を単位weiで取得する
    address a = 0xa;  // アドレス型変数aに0xaのアドレスを格納
    uint b = a.balance; // アドレス"0xa"の持つether量をbに格納

    // send関数
    // アドレス型のメソッド
    // <address>.send(x); で指定のアドレス<address>に x weiのetherを送金することができる
    address target = 0xf2057b8aefb9093331faf48f30c1ebeab4ff961d; //送金先のアドレス指定
    a.send(50); // コントラクト・アドレスが保有するetherから"a"に50wei送金
}

contract ArrayTest {
    // 8bit幅のuint型の長さ5の固定長配列
    uint8[5] uintArray;

    // string型の長さ3の固定長配列
    string[3] stArray;

    // uint型配列全体を取り出す
    function getUintArray() public view returns (uint8[5]) {
        return uintArray;
    }

    
}