<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>你的家是你的堡垒。现在它也是你的VPN。</strong><br>
  <sub>🚫 一个小盒子。所有设备零广告。手机、平板、智能电视——甚至那台可疑的IoT烤面包机。</sub><br>
  <sub>🏆 可能是目前最简单、最实用的非技术用户Linux发行版。插上电源，然后忘掉它。</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io">🌐 官网</a> · 
  <a href="#-快速开始10分钟">🚀 快速开始</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ 给个Star</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="许可证">
  <img src="https://img.shields.io/badge/安装-10%20分钟-brightgreen" alt="安装时间">
  <img src="https://img.shields.io/badge/费用-%240-blue" alt="费用：免费">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇪🇸 <a href="README.es.md">Español</a> · 🇫🇷 <a href="README.fr.md">Français</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 问题

每次你打开手机，**企业都在监视你**。

- 你的网络运营商记录你访问的每一个网站。
- 应用程序通过6000多个广告网络追踪你。
- 智能电视、婴儿监视器、甚至你的冰箱——都在向某人发送你的数据。
- 在公共WiFi或4G上，你的流量是**完全暴露的**。

你没有选择被监控。但你已经被监控了。

> *"说你不在乎隐私是因为你没什么可隐瞒的，就等于说你不在乎言论自由是因为你没什么话可说。"*  
> — **爱德华·斯诺登**

---

## 💡 解决方案

**Invisix** 是一个即插即用的树莓派发行版，为你提供：

| 功能 | 它做什么 | 感受如何 |
|---|---|---|
| 🚫 **全网广告拦截** | 拦截你家中**所有设备**的广告和追踪器——手机、平板、智能电视，一切 | 互联网本该如此 |
| 🔒 **免费私人VPN** | 无论你在哪（4G、机场WiFi、酒店），你的IP**始终是家庭IP** | 就像从未离开过家 |
| 👻 **对追踪器隐形** | DNS级别拦截意味着追踪器根本不会加载 | 对广告商来说你不存在 |
| ⚡ **10分钟安装** | 刷写 → 插入 → 完成。无需终端。无需配置文件。 | 本该如此 |

**无订阅。无云端。无数据收集。无套路。**

你的树莓派。你做主。

> **💥 买一台树莓派。刷入ISO。插上电源。就这样——你刚刚让全家摆脱了企业、追踪器和不良行为者的控制。不需要学位。不需要订阅。只有自由。**

---

## 🏗️ 工作原理

```
                        YOUR HOME
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Phone ────┐                                        │
  │   Laptop ───┤                                        │
  │   Smart TV ─┼───▶  Raspberry Pi (Invisix)  ───▶ Internet
  │   Console ──┤        |-- Pi-hole (ad blocking)       │
  │   Tablet ───┘        '-- Tailscale (VPN)             │
  │                                                      │
  │   All DNS queries filtered. Ads obliterated.         │
  └──────────────────────────────────────────────────────┘

                     AWAY FROM HOME
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   You (4G / Airport WiFi / Hotel)                    │
  │     |                                                │
  │     '───▶  Tailscale VPN Tunnel  ───▶  Home          │
  │                                                      │
  │   Your IP = Home IP. Ads = Still blocked.            │
  │   ISP/Hotel/Airport sees: encrypted noise.           │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 你需要什么

| 材料 | 费用 | 备注 |
|---|---|---|
| 🍓 树莓派 4 (或更新型号) | ¥250-400 | 大脑 |
| 💾 MicroSD卡 (8GB以上) | ¥30 | 灵魂 |
| 🔌 网线 | ¥15 | 脊柱 |
| ⚡ USB-C电源 | ¥50 | 心脏 |

**总计：约¥350-500 一次性费用。** 没有月费。永远没有。

> 对比商业VPN每月¥50-100，而且[它们仍在追踪你](https://www.consumerreports.org/electronics/vpn-services/vpn-testing-poor-privacy-security-a5765950498/)并出售你的数据。Invisix在**4个月内**就能回本。

---

## 🚀 快速开始（10分钟）

### 第1步：刷写镜像 💾

1. 从[发布页面](https://github.com/lluisagusti/Invisix/releases)下载 **`invisix-distro.img`**。
2. 下载 [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/)。
3. 打开并选择：
   - **设备**：Raspberry Pi 4
   - **操作系统**：滚动到底部 → "Use Custom" → 选择 `invisix-distro.img`
   - **存储**：你的SD卡
4. 点击 **Next** → **"NO"** 不编辑设置（已经配置好了！）→ **Write**。

### 第2步：激活VPN（可选） ✨

> *如果你只想在家拦截广告，跳过此步。*

1. 在 [**tailscale.com**](https://tailscale.com) 创建免费账户（支持Google/Microsoft登录）。
2. 前往 **Settings → Keys → "Generate auth key"**。
3. 复制密钥 (`tskey-...`)。
4. 在电脑上打开已刷写的SD卡（显示为 `bootfs`）。
5. 创建名为 **`tailscale-auth.key`** 的文件，将密钥粘贴进去。保存。
6. 弹出SD卡。

### 第3步：即插即用 🔌

1. SD卡 → 树莓派。
2. 网线 → 路由器连接到树莓派。
3. 电源线 → 树莓派。
4. **等待5分钟** ⏳ — 自动完成所有配置。

### 第4步：配置路由器（唯一的手动步骤） ⚙️

1. 打开路由器管理页面（`http://192.168.1.1` 或 `http://192.168.0.1`）。
2. 找到 **DHCP** / **局域网** 设置。
3. 在设备列表中找到 `raspberrypi` → 启用**静态地址分配**。
4. 复制其IP（例如：`192.168.1.50`）。
5. 将该IP设为你的**首选DNS服务器**。

### ✅ 完成！

**就是这样。** 你网络中的所有设备现在都已摆脱广告和追踪器。

---

## 🌍 如何使用

### 🏠 在家
什么都不用做。广告消失了。页面加载更快了。生活美好了。

### 📱 外出时 (4G / 公共WiFi)
1. 在手机上安装 **Tailscale** 应用。
2. 登录。
3. 开启。
4. 你现在通过家庭连接上网——**无广告、加密、隐形**。

### 📊 控制面板
查看你拦截了多少广告：
- 访问 `http://<你的树莓派IP>/admin`
- 密码：`admin`

> 大多数用户拦截了**30-50%的所有DNS查询**。那是每天数千个追踪器无法到你的设备。

---

## 🔥 为什么选择Invisix？

| | 商业VPN | 仅Pi-hole | **Invisix** |
|---|---|---|---|
| 月费 | ¥50-100/月 | 免费 | **免费** |
| 广告拦截 | ❌ | ✅ 仅在家 | ✅ **全场景** |
| 包含VPN | ✅ | ❌ | ✅ **永久免费** |
| 所有设备上拦截 | ❌ | ✅ | ✅ |
| 无需安装App（在家） | ❌ | ✅ | ✅ |
| 数据归你所有 | 🤷 看情况 | ✅ | ✅ |
| 安装时间 | 5分钟 | 1-2小时 | **10分钟** |
| 需要终端 | 不适用 | 是 | **否** |

---

## 🤝 贡献

发现bug？有想法？我们欢迎你的帮助。

1. Fork此仓库。
2. 创建你的分支：`git checkout -b feature/amazing-feature`
3. 提交：`git commit -m 'Add amazing feature'`
4. 推送：`git push origin feature/amazing-feature`
5. 打开Pull Request。

查看 [`BUILD.md`](BUILD.md) 了解如何从源码构建发行版镜像。

---

## 📣 帮我们传播

如果Invisix帮到了你，**帮它帮助更多人**：

- ⭐ **给这个仓库一个Star** — 这是你能做的最重要的事。
- 📢 **分享它** — 告诉朋友，发帖，转发。
- 🐛 **报告bug** — 每一个issue都让Invisix变得更好。
- 🍴 **Fork并贡献** — 代码、文档、翻译，都欢迎。

> 互联网的设计初衷不是为了监视你。让我们一起夺回它。

---

## 📜 许可证

[MIT许可证](LICENSE) — 随意使用。真的。

---

<p align="center">
  用 ❤️ 在巴塞罗那制作
</p>

<p align="center">
  <strong>隐私不是奢侈品。它是一项权利。</strong>
</p>
