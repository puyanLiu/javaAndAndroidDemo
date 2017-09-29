.class final Lcom/alipay/mobile/rome/syncservice/d/b;
.super Ljava/lang/Object;
.source "SyncUplinkHandler.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncservice/d/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncservice/d/a;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/d/b;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncservice/d/a;B)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/d/b;-><init>(Lcom/alipay/mobile/rome/syncservice/d/a;)V

    return-void
.end method


# virtual methods
.method public final connectivityChanged(ZI)V
    .locals 3

    .prologue
    .line 868
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connectivityChanged: netAvailable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/b;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v0, p1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;Z)V

    .line 870
    if-eqz p1, :cond_0

    .line 871
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/b;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;I)V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/b;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;I)V

    goto :goto_0
.end method
