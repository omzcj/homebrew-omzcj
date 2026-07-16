# homebrew-omzcj

个人使用的 Homebrew Tap，收录常用命令行工具、macOS 工具和应用。

## 安装

直接安装单个 Formula 或 Cask：

```sh
brew install omzcj/omzcj/<formula>
brew install --cask omzcj/omzcj/<cask>
```

也可以先添加 Tap：

```sh
brew tap omzcj/omzcj
brew install <formula>
```

## Formulae

| 名称 | 用途 | 备注 |
| --- | --- | --- |
| `class-dump` | 从 Mach-O 文件生成 Objective-C 头文件 | macOS |
| `dotfiles` | 使用 ncdu 记录磁盘占用快照 | 依赖 `ncdu` |
| `ds_store` | 查找、清理并监控 `.DS_Store` 文件 | 支持 Homebrew Services |
| `insert_dylib` | 向 Mach-O 文件插入 dylib load command | macOS、需要 Xcode 构建 |
| `iproxy-ssh` | 通过 USB 将本地 2222 端口转发到设备 SSH 端口 | 支持 Homebrew Services |
| `iterm2-zssh` | 在 iTerm2 中通过 ZMODEM 收发文件 | 依赖 `lrzsz` |
| `lockscreen` | 从命令行锁定当前 macOS 会话 | macOS |
| `optool` | 编辑 Mach-O load command | 仅 Intel macOS |
| `restore-symbol` | 恢复 Mach-O 文件中的符号 | macOS |

启动或停止服务：

```sh
brew services start ds_store
brew services stop ds_store

brew services start iproxy-ssh
brew services stop iproxy-ssh
```

## Casks

| 名称 | 用途 | 备注 |
| --- | --- | --- |
| `clipbus` | 剪贴板历史管理 | Apple Silicon、macOS 15+ |
| `niz-plum-keyboard` | NiZ Plum 键盘校验工具 | macOS |

## 维护与验证

提交改动前运行：

```sh
brew style Formula Casks
brew audit --strict --online --tap=omzcj/omzcj
brew test <formula>
```

Formula 应使用稳定 tag 或固定 commit，并提供 SHA-256。更新无 tag 的源码快照时，同时更新 `url`、日期版本号和 `sha256`。

Pull Request 会通过 GitHub Actions 在 Intel macOS、Apple Silicon macOS 和 Linux 上运行 BrewTestBot。
