---
title: "你好，世界：博客正式开张"
date: 2026-10-02T15:00:00+08:00
draft: false
description: "第一篇文章：这个博客是怎么搭的、以后怎么写文章、会写些什么。"
slug: "hello-world"
tags: ["随笔"]
categories: ["公告"]
---

欢迎来到我的博客！本站用 Hugo + Stack 主题搭建，托管在 GitHub Pages 上，**全程零成本**。

## 以后这里会写什么

- 嵌入式开发笔记：单片机、ESP32、硬件电路
- 项目踩坑记录和解决方案
- 读书笔记和生活随笔

## 怎么写新文章

双击博客目录里的 `新建文章.bat`，它会自动创建一篇文章并用记事本打开。文章就是 `content/posts/` 里的一个 Markdown 文件，开头的信息这样写：

```markdown
---
title: "文章标题"
date: 2026-10-02T15:00:00+08:00
draft: false          # 写完改成 false 才会正式发布
slug: "english-url-name"
tags: ["标签"]
categories: ["分类"]
---

正文用 Markdown 写，保存后本地预览页会自动刷新。
```

## Markdown 常用写法

**加粗**、*斜体*、[链接](https://gohugo.io)、列表、引用都没问题：

> 路虽远，行则将至。

代码块自动带语法高亮，写嵌入式的经典例子：

```c
/* 点亮板载 LED —— 永远的 Hello World */
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"

void app_main(void) {
    gpio_reset_pin(GPIO_NUM_2);
    gpio_set_direction(GPIO_NUM_2, GPIO_MODE_OUTPUT);
    while (1) {
        gpio_set_level(GPIO_NUM_2, 1);
        vTaskDelay(pdMS_TO_TICKS(500));
        gpio_set_level(GPIO_NUM_2, 0);
        vTaskDelay(pdMS_TO_TICKS(500));
    }
}
```

表格也支持：

| 操作 | 方式 |
| ---- | ---- |
| 本地预览 | 双击 `启动本地预览.bat` |
| 写新文章 | 双击 `新建文章.bat` |

下篇文章见。
