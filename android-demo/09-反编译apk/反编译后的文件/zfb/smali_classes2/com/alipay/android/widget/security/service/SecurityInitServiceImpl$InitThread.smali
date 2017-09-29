.class Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v1, v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->initFlagSynLock:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "toBiz"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$0(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "genTid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$1(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->securityInitStart()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
