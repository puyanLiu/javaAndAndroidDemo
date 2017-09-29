.class public Lcom/alipay/mobile/nfc/app/NfcApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "NfcApp.java"


# static fields
.field public static final NFC_APP_ID:Ljava/lang/String; = "20000071"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParam()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NfcApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate - param: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->b:Z

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->getInstance()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    move-result-object v0

    const-string/jumbo v1, "Beam#*#*#*"

    new-instance v2, Lcom/alipay/mobile/nfc/processor/impl/BeamProcessor;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nfc/processor/impl/BeamProcessor;-><init>(Lcom/alipay/mobile/nfc/app/NfcApp;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v1, "Tag#*#*#*"

    new-instance v2, Lcom/alipay/mobile/nfc/processor/impl/TagProcessor;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nfc/processor/impl/TagProcessor;-><init>(Lcom/alipay/mobile/nfc/app/NfcApp;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    new-instance v1, Lcom/alipay/mobile/nfc/processor/impl/PbocProcessor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/processor/impl/PbocProcessor;-><init>(Lcom/alipay/mobile/nfc/app/NfcApp;)V

    const-string/jumbo v2, "UNKNOWN_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "LEAVED_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "DEBIT_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "CREDIT_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "QUASI_CREDIT_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "TRANS_CARD#IsoDep#*#beijing"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    const-string/jumbo v2, "TRANS_CARD#IsoDep#*#*"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V

    .line 41
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NfcApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRestart - param:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->onStart()V

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NfcApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStart - param: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.nfc.NEW_TAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NfcApp"

    const-string/jumbo v2, "send new nfc event broadcast"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "NfcApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pkgName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-class v2, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "nfcparam"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
