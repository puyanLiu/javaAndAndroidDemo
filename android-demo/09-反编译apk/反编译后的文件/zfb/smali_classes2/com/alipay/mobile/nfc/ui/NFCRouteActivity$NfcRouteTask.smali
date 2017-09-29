.class Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;
.super Landroid/os/AsyncTask;
.source "NFCRouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/alipay/mobile/nfc/info/NfcType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;B)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "doInBackground - load nfc type..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->getInstance()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->loadNfcType(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/nfc/info/NfcType;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPostExecute - nfc type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->dismissProgressDialog()V

    return-void

    :cond_0
    sget-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->LeavedCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    const-string/jumbo v1, "\u672a\u8bfb\u53d6\u5230\u5361\u4fe1\u606f\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->getInstance()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->loadBizProcessor(Lcom/alipay/mobile/nfc/info/NfcType;)Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "can not find processor!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".onNewTag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;->onNewTag(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPreExecute - load nfc type"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    const-string/jumbo v1, "\u6570\u636e\u8bfb\u53d6\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 185
    return-void
.end method
