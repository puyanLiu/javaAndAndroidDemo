.class public Lcom/alipay/android/phone/home/ui/HomeView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "HomeView.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidget;


# instance fields
.field private final a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 40
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 42
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 68
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 67
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 69
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 55
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 56
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onDestroy()V

    .line 123
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public onKeyDownEvent()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onReLogin()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onReLogin()V

    .line 127
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeWidgetGroup"

    const-string/jumbo v2, "UserInfo is null, onRefresh return !"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeWidgetGroup"

    const-string/jumbo v2, "onRefresh HomeFrameLayout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onRefresh()V

    goto :goto_0
.end method

.method public setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
