.class Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:I

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Utdid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$300(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    move-result-object v0

    iget v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->startUmidTaskSync(I)Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utdid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "umid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/SecureSdk;->getApdidToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/util/LocalRandomStr;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[*]result.apdid     = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[*]result.token     = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[*]result.umid      = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[*]result.clientKey = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-interface {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    throw v0
.end method
