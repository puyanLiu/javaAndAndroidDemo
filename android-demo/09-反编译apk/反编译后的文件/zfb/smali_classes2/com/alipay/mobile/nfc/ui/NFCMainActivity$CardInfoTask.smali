.class Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;
.super Landroid/os/AsyncTask;
.source "NFCMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;B)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    return-void
.end method

.method private varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "doInBackground - loading card info..."

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    aget-object v2, p1, v1

    .line 260
    :try_start_0
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 261
    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Landroid/nfc/tech/IsoDep;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v2}, Lcom/alipay/nfc/card/pboc/PbocCard;->load(Landroid/content/Intent;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Lcom/alipay/nfc/model/CardInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)V

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pboc card load fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPostExecute - unknownCard:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cardInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->dismissProgressDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPreExecute"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const-string/jumbo v1, "\u6570\u636e\u8bfb\u53d6\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 252
    return-void
.end method
