.class public Lcom/alipay/android/launcher/TitleSearchButton;
.super Lcom/alipay/android/launcher/core/TitleBarItemView;
.source "TitleSearchButton.java"


# static fields
.field public static final ACTIONSRC:Ljava/lang/String; = "actionSrc"

.field public static final ACTIONSRC_FRIENDTAB:Ljava/lang/String; = "friendTab"

.field public static final ACTIONSRC_FUNDTAB:Ljava/lang/String; = "fundTab"

.field public static final ACTIONSRC_HOMETAB:Ljava/lang/String; = "homeTab"

.field public static final LOG_TAG:Ljava/lang/String; = "TitleSearchButton"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleSearchButton;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleSearchButton;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleSearchButton;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->title_search_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->search_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TitleSearchButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/alipay/android/launcher/TitleSearchButton$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TitleSearchButton$1;-><init>(Lcom/alipay/android/launcher/TitleSearchButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public static goTargetApp(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    if-nez p1, :cond_1

    .line 72
    const-string/jumbo v1, "actionSrc"

    const-string/jumbo v2, "homeTab"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    return-void

    .line 73
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 74
    const-string/jumbo v1, "actionSrc"

    const-string/jumbo v2, "friendTab"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 76
    const-string/jumbo v1, "actionSrc"

    const-string/jumbo v2, "fundTab"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TitleSearchButton"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
