# 使用说明

## 先申请`infora.io`的api

1. 访问 [infora](https://infura.io/)
2. 注册账号
3. 进入 [仪表盘](https://infura.io/zh/dashboard)
4. 点击右上角的`CREATE NEW KEY`
5. 选择`Web3 API`，名字随意，点击创建
6. 复制以太坊主网api链接

## 填写相关信息

1. 打开`hardhat.config.js`文件
2. 将复制的以太坊主网api链接粘贴到文件中的`ethApiUrl`字段中。
3. 将你的钱包私钥粘贴到文件中的`privateKey`字段中。

> 为了您的资金安全，合约部署完成后，应当将url和私钥从文件中删除，防止不小心将此机密信息泄漏。

## 安装依赖

```bash
npm install
```

## 部署

```bash
npx hardhat --network eth run deploy/deploy.js
```

