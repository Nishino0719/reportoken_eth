pragma solidity ^0.5.16; //コンパイルに使用するsolidityのバージョンを指定

//OpenZeppelin ライブラリから、ERC20 の実装クラスである StandardToken.sol をインポート
import "/Users/tsudashouki/erc-20token/node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

// StandardTokenの継承
contract TsudaToken is StandardToken {
  // 状態変数に値を代入
  string public name = "TsudaToken"; //トークンの名称
  string public symbol = "TT"; //トークンの単位表記
  uint public decimals = 18; // 小数点の桁数

  //コントラクトが作成された際に呼ばれるコンストラクタの定義
  //  totalSupply_ （トークンの総発行量）にinitialSupply（トークンの発行数）を代入。
  // 発行したトークンをmsg.sender のアドレス（口座）に入れる。msg.senderはトークン発行者のEthereumアドレス。

  function Tsuda(uint initialSupply) public {
    totalSupply_ = initialSupply;
    balances[msg.sender] = initialSupply;
  }
}
