.class final Lcom/alipay/android/phone/businesscommon/advertisement/d/c;
.super Ljava/lang/Object;
.source "AdSyncCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

.field private final synthetic b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/a;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/d/c;)Lcom/alipay/android/phone/businesscommon/advertisement/d/a;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceiveCommand:  [ AdSyncCallbackImpl ] [ syncCommand="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 285
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "fullUpdate"

    .line 290
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    .line 289
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/c;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    .line 311
    :cond_0
    return-void
.end method
