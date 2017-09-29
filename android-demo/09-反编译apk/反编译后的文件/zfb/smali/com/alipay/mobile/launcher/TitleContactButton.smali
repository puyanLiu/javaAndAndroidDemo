.class public Lcom/alipay/mobile/launcher/TitleContactButton;
.super Lcom/alipay/android/launcher/core/TitleBarItemView;
.source "TitleContactButton.java"


# instance fields
.field a:Landroid/support/v4/content/LocalBroadcastManager;

.field private b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private c:Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

.field private d:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/launcher/TitleContactButton;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/mobile/launcher/TitleContactButton;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/launcher/TitleContactButton;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/launcher/TitleContactButton;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->e:Landroid/os/Handler;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->k:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/launcher/TitleContactButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->d:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 59
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/launcher/TitleContactButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/alipay/mobile/launcher/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/launcher/a;-><init>(Lcom/alipay/mobile/launcher/TitleContactButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/launcher/TitleContactButton;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    const-string/jumbo v1, "point"

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "entryRedPoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "entryUnread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->d:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->d:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/alipay/android/launcher/core/TitleBarItemView;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string/jumbo v1, "socialEntry"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;-><init>(Lcom/alipay/mobile/launcher/TitleContactButton;)V

    iput-object v1, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->c:Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->c:Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    new-instance v0, Lcom/alipay/mobile/launcher/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/launcher/b;-><init>(Lcom/alipay/mobile/launcher/TitleContactButton;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alipay/android/launcher/core/TitleBarItemView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->c:Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/mobile/launcher/TitleContactButton;->c:Lcom/alipay/mobile/launcher/TitleContactButton$FriendEntryListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_0
    return-void
.end method
