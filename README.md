# heroku-manager

## 配置参数
### 单次一个部署Secrets设置
请 Fork 本项目到自己的账户下, 转至Settings>secrets，设置如下参数。

| Name              | Description                                |
| ----------------- | ------------------------------------------ |
| APP_NAME          | heroku 项目名字                  |
| EMAIL             | heroku 账户的 email                        |
| HEROKU_API_KEY    | heroku API key， 在 account 设置下可以找到 |
| HEROKU_V2RAY_UUID | V2ray UUID                                  |

### 单次两个部署Environments设置
请 Fork 本项目到自己的账户下, 转至Settings>Environments，点击New environment取个名字，再设置如下参数。

| Name              | Description                                |
| ----------------- | ------------------------------------------ |
| APP_NAME1          | 第一个heroku 项目名字                  |
| EMAIL1             | 第一个heroku 账户的 email                        |
| HEROKU_API_KEY1    | 第一个heroku API key， 在 account 设置下可以找到 |
| APP_NAME2          | 第二个heroku 项目名字                  |
| EMAIL2            | 第二个heroku 账户的 email                        |
| HEROKU_API_KEY2   | 第二个heroku API key， 在 account 设置下可以找到 |
| HEROKU_V2RAY_UUID | V2ray UUID                                  |

## 一键单次一个部署
> 请 Fork 本项目到自己的账户下, 修改README.md中下列图标中参数template后面的地址为你自己fork完后的项目地址。
> 
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://dashboard.heroku.com/new?template=https://github.com/fangxingweiai/heroku-manager)

## 更多部署方式请转至Action>heroku-deploy>Run workflow