.class final Lcom/alipay/android/phone/businesscommon/advertisement/d/d;
.super Ljava/lang/Object;
.source "AdSyncCallbackImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/d/c;

.field private final synthetic b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/c;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/c;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/c;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/d/c;)Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 299
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syncCommand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u91cd\u65b0\u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 303
    return-void
.end method
