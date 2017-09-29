.class Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;
.super Ljava/lang/Object;
.source "NFCServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 233
    instance-of v0, p2, Lcom/alipay/mobile/nfc/NFCResponsable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->registerNFCMsgSender(Landroid/app/Activity;)V

    goto :goto_0

    .line 240
    :cond_3
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->enableForegroundDispatch(Landroid/app/Activity;)V

    goto :goto_0

    .line 243
    :cond_5
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->disableForegroundDispatch(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 218
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NFCService"

    const-string/jumbo v2, "microcontext.exit() \u4e4b\u524d\u68c0\u67e5NFC foreground activity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->checkForegroundDispatch()V

    goto :goto_0
.end method
