.class final Lcom/alipay/pushsdk/push/n;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/m;

.field final synthetic b:Lcom/alipay/pushsdk/push/m;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/m;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 230
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminatePersistentConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/m;->c(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "terminatePersistentConnection()... run()"

    .line 237
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->a()V

    .line 244
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->h()V

    .line 245
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "terminatePersistentConnection()...Done!"

    .line 246
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_2
    return-void
.end method
