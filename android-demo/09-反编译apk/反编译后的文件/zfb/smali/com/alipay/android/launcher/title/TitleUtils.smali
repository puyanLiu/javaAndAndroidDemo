.class public Lcom/alipay/android/launcher/title/TitleUtils;
.super Ljava/lang/Object;
.source "TitleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleItemInfo(Landroid/content/Context;)Lcom/alipay/android/launcher/beans/ItemInfo;
    .locals 4

    .prologue
    .line 22
    const-string/jumbo v0, "title_config.json"

    .line 23
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/alipay/android/launcher/title/TitleUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 28
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 29
    const-class v0, Lcom/alipay/android/launcher/beans/ItemInfo;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/beans/ItemInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TitleUtils"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static initTitleLeft(Lcom/alipay/android/launcher/beans/ItemInfo;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getLeftSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/launcher/beans/ItemInfo;->getLeft()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 77
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 94
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 95
    return-void

    .line 79
    :cond_0
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/beans/Left;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/Left;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "TitleUtils"

    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static initTitleRight(Lcom/alipay/android/launcher/beans/ItemInfo;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/android/launcher/beans/ItemInfo;->getRight()Ljava/util/List;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    move v1, v2

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 70
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 71
    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/beans/Right;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/Right;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "TitleUtils"

    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 40
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 44
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
