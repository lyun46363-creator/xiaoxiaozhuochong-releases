# 小小桌宠 Windows 安装包

最新正式版 **1.5.2**。首次使用先安装主体，语音生成包可选。

## 下载

- [下载桌宠主体（866.48 MiB，必装）](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases/download/v1.5.2/xiaoxiaozhuochong-software-1.5.2.exe)
- [下载语音生成包（约 1.37 GiB，可选）](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases/download/v1.5.2/xiaoxiaozhuochong-voice-1.5.2.exe)
- [查看 1.5.2 更新说明与全部附件](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases/tag/v1.5.2)
- [查看历史版本](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases)

这两个 EXE 直接安装，无需解压或合并。官网和夸克等渠道尚未同步时，请以本页 GitHub 1.5.2 附件为准。

## 怎么安装与升级

1. 主体内置离线聊天、桌宠与提醒、系统语音和中文识别。不安装可选语音包也可使用。
2. 已有用户**无需先卸载**：退出桌宠后，双击新版主体包覆盖安装。识别旧版后自动沿用原目录，可能跳过目录选择页；个人数据与已有语音模型保留。如出现目录选择页，请核对原安装目录。
3. 只有本版配套语音包已经下载且与主体包放在同一文件夹时才勾选语音组件。缺包或校验失败会停止安装，不自动联网下载。也可先只装主体，以后单独运行语音包并安装到同一桌宠目录。
4. 1.5.2 保留版本检查与提醒，点击下载入口后在浏览器手动下载和安装。主体、语音独立检查；已装语音模型可继续保留。更早版本客户端可能需要手动覆盖安装一次以获得新界面与官网配置。

更新内容见 [CHANGELOG.md](CHANGELOG.md)。联系我们：[官网反馈](https://xiaoxiaozhuochong.pages.dev/#feedback)。

## 文件校验

| 文件 | 字节 | SHA256 |
| --- | ---: | --- |
| `xiaoxiaozhuochong-voice-1.5.2.exe` | 1467550663 | `cde920fdef9d2ad735dd44858b3d93d43570b51730d9c671c847ccc4ee1f3bce` |
| `xiaoxiaozhuochong-software-1.5.2.exe` | 908572582 | `41f140eb91a77ba1b3baba5f99b3d33ec0056ce82a843db6579a795ffe820304` |

## 公开文件说明

仓库只保存发布说明、版本校验清单和历史合并工具；安装器仅作为 Releases 附件，不进入 Git 历史。

- 根 `updates.json` 为旧客户端兼容的 schema 1，必须与已公开附件的版本、URL、字节数及 SHA256 一致；`versions/1.5.2.json` 为本版记录。
- 官网使用 schema 2，两种格式不要直接互相覆盖。官网更新源部署与网盘文件同步另行进行。
- 历史 1.4.4 的两个分卷、校验清单和 `merge-installer.ps1` 仍配套使用；**1.5.2 不使用这些分卷或合并工具**。
- 安装器含可查看的 `app_code` 与 `source.zip`，源码仓库私有不代表安装器具备源码防逆向。第三方许可证随包提供。不得把私有源码仓库历史、个人数据或密钥上传到此公开仓库。
