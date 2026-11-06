# 小小桌宠 Windows 安装包

这是小小桌宠的公开发布仓库。安装文件通过 [Releases](https://github.com/lyun46363-creator/xiaoxiaozhuochong-releases/releases) 提供，Git仓库存放版本说明、文件校验信息和完整包合并工具。

当前发布版本：**1.4.4**。

- 已安装桌宠且语音资源完整：下载升级包，选择原安装目录升级。
- 首次安装：完整安装器超过GitHub单附件大小限制，请下载同一版本的两个 `.part` 文件及 `merge-installer.ps1`，放在同一文件夹中。在该文件夹打开PowerShell，运行 `powershell -NoProfile -ExecutionPolicy Bypass -File .\merge-installer.ps1`。脚本合并并核对SHA256后生成完整 `.exe`；只有校验通过后再手动运行安装器。
- 聊天、待办、昵称和设置由安装程序按原规则保留。升级前建议备份个人数据。

本次仅发布1.4.4，早期版本不在此仓库公开发布。1.4.4沿用此前可维护的源码布局，安装文件包含应用源码；本仓库公开发布不代表源码保护已完成。

第三方组件的许可证和说明随安装程序提供。
