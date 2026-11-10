# 小小桌宠 Windows 安装包

版本 **1.5.0**。首次使用先下载并安装桌宠主体；语音生成包按需选装。

## 点击下载

### [⬇ 下载桌宠主体（必装，约 866 MiB）](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases/download/v1.5.0/xiaoxiaozhuochong-software-1.5.0.exe)

包含桌宠、离线聊天模型、提醒、系统语音和中文语音识别。下载后双击安装。

### [⬇ 下载语音生成包（可选，约 1.37 GiB）](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases/download/v1.5.0/xiaoxiaozhuochong-voice-1.5.0.exe)

想体验桌宠生成新的专属音色对话，再安装这个包。不安装也能使用离线聊天和系统语音。

这两个入口直接指向安装文件，无需再进入发布页面查找。下载入口在对应版本安装包上传完成后生效。[查看所有发布版本](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases)

## 怎么安装

1. 下载“桌宠主体”，双击下载的 `.exe` 文件，按提示安装。
2. 如需语音生成，再下载“语音生成包”并运行；安装器会自动查找主体目录。两个包单独下载，无需解压或合并。
3. 已有用户选择原安装目录覆盖安装，保留个人数据。1.4.5 用户需手动安装一次 1.5.0，之后可在小屋检查和操作更新。
4. 联网检测到更新会先询问立刻／稍后下载，校验后点击一键安装。主体与语音组件独立更新，未装语音包的用户仅收到主体更新询问。

## 作者手动发布

先发布 `v1.5.0` Release 并上传两个英文名附件，确认可下载后，再提交根目录 `updates.json`。清单必须位于 `main` 分支根目录，只作为 Release 附件上传无效。安装器不加入 Git 历史。

未来只更新一个组件时，保留另一组件原有的版本、URL、大小和 SHA256。附件校验信息见 `updates.json` 和 `versions/1.5.0.json`。上传与发布由作者手动完成，本地生成文件不代表已公开发布。

历史 1.4.4 分卷及合并工具保留，详情以对应 Release 和 `versions/1.4.4.json` 为准。

安装器仍含可查看的 app_code 和 source.zip；源码仓库私有不表示安装器已经具备源码保护。第三方许可证随包提供。不应将源码仓库历史、个人数据或真实密钥上传到本仓库。
